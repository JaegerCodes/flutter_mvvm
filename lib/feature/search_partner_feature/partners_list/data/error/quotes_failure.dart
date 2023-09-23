import 'package:partners/core/shared/failure.dart';

abstract class QuotesFailure implements FailureResponse {
  const QuotesFailure();
}

class InvalidQuotesData extends QuotesFailure {
  @override
  String get message => 'Invalid data received for quotes.';
}
