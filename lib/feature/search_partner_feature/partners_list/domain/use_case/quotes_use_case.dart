import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:partners/core/shared/async_operation.dart';
import 'package:partners/core/shared/failure.dart';
import 'package:partners/core/shared/result_handler.dart';
import 'package:partners/core/shared/use_case.dart';
import 'package:partners/feature/search_partner_feature/partners_list/domain/model/quote.dart';
import 'package:partners/feature/search_partner_feature/partners_list/domain/repository/quotes_repository.dart';

class GetQuotesStreamUseCase extends StreamUseCase<Quotes> {
  final QuotesRepository _quotesRepository;

  GetQuotesStreamUseCase(this._quotesRepository);

  @override
  Stream<AsyncOperation<Quotes>> run() async* {
    final quotesResult = await _quotesRepository.getQuotes();
    yield Completed<Quotes, FailureResponse>(
        quotesResult.fold(
          (quotes) => Result.success(quotes),
          (failure) => Result.failure(failure)
        )
    );
  }
}

final getQuotesStreamUseCaseProvider = Provider<GetQuotesStreamUseCase>((ref) {
  final quotesRepo = ref.watch(quotesRepositoryProvider);
  return GetQuotesStreamUseCase(quotesRepo);
});
