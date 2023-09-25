import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:partners/core/database/app_database.dart';
import 'package:partners/core/shared/failure.dart';
import 'package:partners/core/shared/result_handler.dart';
import 'package:partners/feature/search_partner_feature/partners_list/data/api/quotes_service.dart';
import 'package:partners/feature/search_partner_feature/partners_list/data/repository/quotes_repository_impl.dart';
import 'package:partners/feature/search_partner_feature/partners_list/domain/model/quote.dart';

abstract class QuotesRepository {
  Future<Result<Quotes, FailureResponse>> getQuotes();
}
final quotesRepositoryProvider = Provider<QuotesRepository>((ref) {
  final quotesService = ref.watch(quotesApiProvider);
  final appDatabase = ref.watch(appDatabaseProvider);
  return QuotesRepositoryImpl(quotesService, appDatabase.quoteDao);
});
