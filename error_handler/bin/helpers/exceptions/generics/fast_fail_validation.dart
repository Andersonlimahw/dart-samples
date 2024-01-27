class FastFailValidationException implements Exception {
  FastFailValidationException({
    required this.property,
    required this.message,
  });
  String property;
  String message;
}
