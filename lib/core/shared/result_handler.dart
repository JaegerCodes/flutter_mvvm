
abstract class Result<T, E> {
  const Result();

  factory Result.success(T value) = Success<T, E>;
  factory Result.failure(E error) = Failure<T, E>;

  bool get isSuccess;
  bool get isFailure;

  T? getOrNull();
  E? errorOrNull();
}

class Success<T, E> extends Result<T, E> {
  final T value;

  Success(this.value);

  @override
  bool get isSuccess => true;

  @override
  bool get isFailure => false;

  @override
  T? getOrNull() => value;

  @override
  E? errorOrNull() => null;

  @override
  String toString() => 'Success($value)';
}

class Failure<T, E> extends Result<T, E> {
  final E error;

  Failure(this.error);

  @override
  bool get isSuccess => false;

  @override
  bool get isFailure => true;

  @override
  T? getOrNull() => null;

  @override
  E? errorOrNull() => error;

  @override
  String toString() => 'Failure($error)';
}

extension ResultExtensions<T, E> on Result<T, E> {
  Result<T, E> onSuccess(void Function(T) action) {
    if (isSuccess) action(getOrNull()!);
    return this;
  }

  Result<T, E> onFailure(void Function(E) action) {
    if (isFailure) action(errorOrNull()!);
    return this;
  }

  R fold<R>(R Function(T) onSuccess, R Function(E) onFailure) {
    return isSuccess ? onSuccess(getOrNull()!) : onFailure(errorOrNull()!);
  }

  Future<R> futureFold<R>(R Function(T) onSuccess, Future<R> Function(E) onFailure) async {
    return isSuccess ? onSuccess(getOrNull()!) : await onFailure(errorOrNull()!);
  }
}

