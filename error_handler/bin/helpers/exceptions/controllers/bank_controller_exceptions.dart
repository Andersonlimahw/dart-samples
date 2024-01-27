class IsAuthenticatedAccountException implements Exception {
  IsAuthenticatedAccountException({required this.accountId});
  String accountId;
  String message = 'Usuário não está autenticado';
}
