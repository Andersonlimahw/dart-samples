class IsAuthenticatedAccountException implements Exception {
  IsAuthenticatedAccountException({required this.accountId});
  static const String report = "IsAuthenticatedAccountException";
  String accountId;
  String message = 'Usuário não está autenticado';

  @override
  String toString() {
    return "$report\n accountId: $accountId \n: message: $message";
  }
}
