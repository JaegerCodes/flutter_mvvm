import 'package:chopper/chopper.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:partners/core/network/response_handler/response_handler.dart';
import 'package:partners/core/shared/failure.dart';
part 'error_response.g.dart';

@JsonSerializable()
class ErrorResponse {
  final int code;
  final String message;
  final String data;

  ErrorResponse({
    required this.code,
    required this.message,
    required this.data,
  });

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => _$ErrorResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);
}

extension ResponseFailureParsing on Response<dynamic> {
  FailureResponse parseFailure() {
    final errorResponse = parseErrorResponse(this);
    return unauthorizedError(statusCode)
        ?? getServerError(statusCode, errorResponse)
        ?? getError(statusCode, errorResponse);
  }
}

Error getError(int status, ErrorResponse? body) {
  return body != null
      ? Error(code: body.code, message: body.message)
      : Error(code: status, message: 'Unknown error');
}
