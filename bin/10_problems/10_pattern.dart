sealed class Transaction {}

class Deposit implements Transaction {
  final double ammount;
  Deposit(this.ammount);
}

class Withdrawal implements Transaction {
  final double ammount;
  Withdrawal(this.ammount);
}

class Transfer implements Transaction {
  final double ammount;
  Transfer(this.ammount);
}

void main() {
  List<Transaction> transactions = [
    Deposit(1000),
    Withdrawal(300),
    Transfer(200),
    Deposit(500),
    Transfer(100),
  ];

  double balance = 0.0;

  for (var tx in transactions) {
    switch (tx) {
      case Deposit(:var ammount):
        print('Deposited: $ammount');
        balance += ammount;
      case Withdrawal(:var ammount):
        print('Withdrawn: $ammount');
        balance -= ammount;
      case Transfer(:var ammount):
        print('Transferred: $ammount');
        balance -= ammount;
    }
  }
}
