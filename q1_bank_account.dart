class BankAccount {
  String accountID;
  double balance;

  // No-argument constructor: the account starts with zero balance.
  BankAccount()
      : accountID = '',
        balance = 0.0;

  // Constructor with an initial balance.
  BankAccount.withBalance(this.balance, {this.accountID = ''});

  bool withdraw(double amount) {
    if (amount <= 0 || amount > balance) {
      return false;
    }

    balance -= amount;
    return true;
  }

  void deposit(double amount) {
    if (amount <= 0) {
      return;
    }

    balance += amount;
  }
}

void main() {
  BankAccount firstAccount = BankAccount();
  print('First account balance: ${firstAccount.balance}');

  BankAccount secondAccount = BankAccount.withBalance(
    1000.0,
    accountID: 'ACC001',
  );

  print('Account ID: ${secondAccount.accountID}');
  print('Initial balance: ${secondAccount.balance}');

  secondAccount.deposit(500.0);
  print('Balance after deposit: ${secondAccount.balance}');

  print('Withdraw 300: ${secondAccount.withdraw(300.0)}');
  print('Balance after withdrawal: ${secondAccount.balance}');

  print('Withdraw 2000: ${secondAccount.withdraw(2000.0)}');
  print('Final balance: ${secondAccount.balance}');
}
