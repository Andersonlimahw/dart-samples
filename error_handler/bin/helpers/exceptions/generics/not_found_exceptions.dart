class NotFoundCustomException extends FormatException implements Exception {
  NotFoundCustomException({
    required this.property,
    required this.message,
    this.code = 404,
  });

  String property;
  @override
  String message;
  int? code;
}
