class User {
  final int id;
  final String name;

  User(this.id, this.name);
}

class Orders {
  final double ammount;

  Orders(this.ammount);
}

Future<User> fetchUserByid(int id) async {
  await Future.delayed(Duration(seconds: 3));
  return User(id, 'Shivansh');
}

Future<List<Orders>> fetchUserOrders(User user) async {
  await Future.delayed(Duration(seconds: 3));
  return [Orders(100.00), Orders(180.00), Orders(1040.00)];
}

double calculateTotal(List<Orders> order) {
  return order.fold(0.0, (sum, Orders) => sum + Orders.ammount);
}

double applyDiscount(double totalSpent) {
  if (totalSpent > 400) {
    return totalSpent * 0.9;
  }
  return totalSpent;
}

Future<void> processUserPurchase(int userID) async {
  try {
    User user = await fetchUserByid(userID);
    print('Fetched user: ${user.name}');

    List<Orders> order = await fetchUserOrders(user);
    print('Fetched ${order.length} orders');

    double total = calculateTotal(order);
    print('Total before discount: \$${total.toStringAsFixed(2)}');

    double finalAmount = applyDiscount(total);
    print('Final amount after discount: \$${finalAmount.toStringAsFixed(2)}');
  } catch (e) {
    print('Error: $e');
  }
}

void main() {
  processUserPurchase(1);
}
