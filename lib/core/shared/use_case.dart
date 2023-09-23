import 'dart:async';

import 'package:partners/core/shared/async_operation.dart';
import 'package:stream_transform/stream_transform.dart';

abstract class UseCase<ReturnType, Params> {
  Future<ReturnType> call(Params params);
}

abstract class StreamUseCase<ReturnType>  {
  Stream<AsyncOperation<ReturnType>> execute() {
    return run().startWith(loading());
  }
  Stream<AsyncOperation<ReturnType>> run();
}

class NoParams {}