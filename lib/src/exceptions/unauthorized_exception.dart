part of 'exceptions.dart';

class UnauthorizedException implements Exception {
  String message;
  UnauthorizedException(this.message);
}
