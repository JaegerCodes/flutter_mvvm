import 'package:partners/core/shared/failure.dart';

/// [AuthFailure] represents an authorization failure
abstract class AuthFailure implements FailureResponse {
  const AuthFailure();

  /// [Unauthorized] is used to represent an HTTP 401 status code.
  factory AuthFailure.unauthorized() = _Unauthorized;
}

class _Unauthorized extends AuthFailure {
  @override
  String get message => 'Unauthorized access. HTTP 401 status code.';
}