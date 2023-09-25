import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:chopper/chopper.dart';
import 'package:partners/core/network/response_handler/auth_failure.dart';
import 'package:partners/core/network/response_handler/error_response.dart';
import 'package:partners/core/shared/failure.dart';
import 'package:partners/core/shared/result_handler.dart';

/// [apiCall] is used to make a safe API call. It avoids boilerplate and if an exception happens, it
/// is encapsulated here.
Future<Result<Out, FailureResponse>> apiCall<In, Out>({
    required Future<Response> Function() api,
    required Result<Out, FailureResponse> Function(Response) onSuccess,
    required FailureResponse Function(Response) onFailure,
}) async {
  try {
    final response = await api().timeout(timeoutDuration);

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return onSuccess(response);
    } else {
      return Result.failure(onFailure(response));
    }
  } on TimeoutException {
    return Result.failure(ServerFailure("Request timed out after ${timeoutDuration.inSeconds} seconds"));
  } on SocketException {
    return Result.failure(NetworkConnectionFailure());
  } on HttpException catch (e) {
    return Result.failure(ServerFailure("HTTP Exception: ${e.message}"));
  } on FormatException {
    return Result.failure(ServerFailure("Format Exception: Invalid format received"));
  } catch (e) {
    return Result.failure(ExceptionFailure("Unexpected Exception: ${e.toString()}"));
  }
}

/// [parseErrorResponse] is used to map the error json response to [ErrorResponse].
ErrorResponse? parseErrorResponse(Response response) {
  final errorBody = response.body;
  if (errorBody != null && errorBody.isNotEmpty) {
    return ErrorResponse.fromJson(json.decode(errorBody));
  }
  return null;
}

/// [unauthorizedError] is used to map an Unauthorized error.
AuthFailure? unauthorizedError(int status) {
  if (status == 401) {
    return AuthFailure.unauthorized();
  }
  return null;
}

/// [getServerError] is used when an HTTP 5xx status code is obtained.
ServerFailure? getServerError(int status, ErrorResponse? body) {
  if (status >= 500 && body != null) {
    return ServerFailure(body.message);
  }
  return null;
}

/// Defines the timeout duration for API calls.
///
/// Used to limit the amount of time to wait for an API call to complete.
/// If a call exceeds this duration, a [TimeoutException] will be thrown.
///
/// The duration is expressed in seconds.
const timeoutDuration = Duration(seconds: 30);
