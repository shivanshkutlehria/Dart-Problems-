class Bankaccount {
  double balance;
  String name;
  String account_num;

  Bankaccount(this.account_num, this.name, [this.balance = 0.0]);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposited \$${amount.toStringAsFixed(2)} to $name's account.");
    } else {
      print("Deposit amount must be positive.");
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print("Withdrawal amount must be positive.");
    } else if (amount > balance) {
      print("Insufficient funds for withdrawal.");
    } else {
      balance -= amount;
      print("Withdrew \$${amount.toStringAsFixed(2)} from $name's account.");
    }
  }

  void transferTo(Bankaccount recipient, double amount) {
    if (amount <= 0) {
      print("Transfer amount must be positive.");
    } else if (amount > balance) {
      print("Insufficient balance to transfer.");
    } else {
      this.withdraw(amount);
      recipient.deposit(amount);
      print("Transferred \$${amount.toStringAsFixed(2)} from $name to ${recipient.name}.");
    }
  }

  void displayInfo() {
    print("Account: $account_num | Owner: $name | Balance: \$${balance.toStringAsFixed(2)}");
  }
}
void main(){
  Bankaccount acc1 = Bankaccount("001", "A", 500.0);
  Bankaccount acc2 = Bankaccount("002", "B", 300.0);

  acc1.displayInfo();
  acc2.displayInfo();

  acc1.deposit(200);
  acc1.withdraw(100);
  acc1.transferTo(acc2, 150);

  acc1.displayInfo();
  acc2.displayInfo();
}