class FastFailValidationException implements Exception {
  FastFailValidationException({
    required this.property,
    required this.message,
  });
  static const String report = "FastFailValidationException";
  String property;
  String message;

  @override
  String toString() {
    return "$report\n property: $property \n: message: $message";
  }
}
