class StatusException implements Exception {
  final String message;
  StatusException({required this.message});
}

class GeneralException implements Exception {
  final String message;
  GeneralException({required this.message});
}
