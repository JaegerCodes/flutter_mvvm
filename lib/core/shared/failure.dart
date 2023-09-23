/// [FailureResponse] is a base type representing failed operations. Subtypes are created to add context to
/// particular kinds of failure in an operation.
abstract class FailureResponse {
  /// Human readable message that describes what the failure is.
  String get message => '';
}

/// [NetworkConnectionFailure] is used to represent failures when using the network
class NetworkConnectionFailure<ErrorData> implements FailureResponse {
  final ErrorData? errorData;

  NetworkConnectionFailure({this.errorData});

  @override
  String get message => 'Network connection failure';
}

/// [ServerFailure] is used to represent an error on the server-side of a network request. Typical
/// usage is when the request gets an HTTP 5xx status code.
class ServerFailure implements FailureResponse {
  @override
  final String message;

  ServerFailure(this.message);
}

/// [ExceptionFailure] wraps an exception that resulted in a [FailureResponse]
class ExceptionFailure implements FailureResponse {
  final dynamic e;  // In Dart, exceptions are typically of type dynamic

  ExceptionFailure(this.e);

  @override
  String get message => 'ExceptionFailure: $e';
}

/// [Error] is used to represent an HTTP 4xx status code.
class Error implements FailureResponse {
  final int code;
  @override
  final String message;

  Error({this.code = 0, this.message = ''});
}
