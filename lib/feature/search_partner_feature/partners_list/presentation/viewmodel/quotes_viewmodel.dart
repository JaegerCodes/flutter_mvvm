import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:partners/core/shared/async_operation.dart';
import 'package:partners/core/shared/failure.dart';
import 'package:partners/feature/search_partner_feature/partners_list/domain/model/quote.dart';
import 'package:partners/feature/search_partner_feature/partners_list/domain/use_case/quotes_use_case.dart';

enum QuotesStatus { loading, success, error }

class QuotesState {
  final QuotesStatus status;
  final Quotes? quotes;
  final FailureResponse? failureResponse;

  QuotesState({
    required this.status,
    this.quotes,
    this.failureResponse,
  });
}

class QuotesViewModel extends StateNotifier<QuotesState> {
  final GetQuotesStreamUseCase _getQuotesUseCase;
  StreamSubscription<AsyncOperation<Quotes>>? _quotesSubscription;

  QuotesViewModel(this._getQuotesUseCase)
      : super(QuotesState(status: QuotesStatus.loading)) {
    fetchQuotes();
  }

  void fetchQuotes() {
    // Cancela la suscripción anterior si existe
    _quotesSubscription?.cancel();

    _quotesSubscription = _getQuotesUseCase.execute().listen((asyncOperation) {
      if (asyncOperation.isLoading) {
        state = QuotesState(status: QuotesStatus.loading);
      }

      asyncOperation.onSuccess((data) {
        state = QuotesState(status: QuotesStatus.success, quotes: asyncOperation.data);
      });

      asyncOperation.onFailure((failure) {
        state = QuotesState(status: QuotesStatus.error, failureResponse: asyncOperation.error);
      });
    });
  }

  @override
  void dispose() {
    _quotesSubscription?.cancel();
    super.dispose();
  }
}

final quotesNotifierProvider =
    StateNotifierProvider<QuotesViewModel, QuotesState>((ref) {
  final getQuotesUseCase = ref.watch(getQuotesStreamUseCaseProvider);
  return QuotesViewModel(getQuotesUseCase);
});
