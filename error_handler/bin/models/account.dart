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
  })  : assert(name.trim().isNotEmpty, 'Nome não pode ser uma string vazia'),
        assert(balance > 0, 'Balance deve ser maior do que zero'),
        assert(id.isNotEmpty, 'Id é obrigatório');

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
