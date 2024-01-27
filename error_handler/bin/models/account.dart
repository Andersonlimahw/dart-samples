class Account {
  String id;
  String name;
  double balance;
  bool isAuthenticated;

  Account({
    required this.id,
    required this.name,
    required this.balance,
    required this.isAuthenticated,
  });

  editBalance({required value}) {
    balance = balance + value;
  }

  @override
  String toString() {
    String message =
        'Account => Id: $id name: $name, balance: $balance, isAuthenticated: $isAuthenticated';
    print(message);
    return message;
  }
}
