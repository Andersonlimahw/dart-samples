class NotFoundCustomException extends FormatException implements Exception {
  NotFoundCustomException({required this.property, required this.message});
  static const String report = "NotFoundCustomException";
  String property;
  @override
  String message;
  int code = 404;

  @override
  String toString() {
    return "$report\n property: $property \n: message: $message \n code: $code";
  }
}
