import 'dart:math';

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
}
