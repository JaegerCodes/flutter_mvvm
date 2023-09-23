
import 'package:partners/core/shared/failure.dart';
import 'package:partners/core/shared/result_handler.dart';

abstract class AsyncOperation<T> {
  bool get isLoading => this is Loading;
  bool get isSuccess => this is Completed<T, FailureResponse> && (this as Completed).result.isSuccess;
  bool get isFailure => this is Completed<T, FailureResponse> && (this as Completed).result.isFailure;

  T? get data {
    if (this is Loading) {
      return null;
    } else if (this is Completed<T, FailureResponse>) {
      return (this as Completed<T, FailureResponse>).result.getOrNull();
    }
    return null;
  }

  FailureResponse? get error {
    if (this is Loading) {
      return null;
    } else if (this is Completed<T, FailureResponse>) {
      return (this as Completed<T, FailureResponse>).result.errorOrNull();
    }
    return null;
  }

  void onSuccess(void Function(T data) action) {
    if (this is Completed<T, FailureResponse>) {
      final result = (this as Completed<T, FailureResponse>).result;
      result.onSuccess(action);
    }
  }

  void onFailure(void Function(FailureResponse failure) action) {
    if (this is Completed<T, FailureResponse>) {
      final result = (this as Completed<T, FailureResponse>).result;
      if (result.isFailure) action(result.errorOrNull() as FailureResponse);
    }
  }
}

class Loading<T> extends AsyncOperation<T> {}

class Completed<T, E> extends AsyncOperation<T> {
  final Result<T, E> result;

  Completed(this.result);
}

AsyncOperation<T> loading<T>() => Loading<T>();
AsyncOperation<T> success<T>(T data) => Completed(Result.success(data));
AsyncOperation<T> failure<T>(FailureResponse error) => Completed(Result.failure(error));
