import 'package:partners/core/network/response_handler/error_response.dart';
import 'package:partners/core/network/response_handler/response_handler.dart';
import 'package:partners/core/network/util/network_util.dart';
import 'package:partners/core/shared/failure.dart';
import 'package:partners/core/shared/result_handler.dart';
import 'package:partners/feature/search_partner_feature/partners_list/data/api/quotes_service.dart';
import 'package:partners/feature/search_partner_feature/partners_list/data/dao/quote_dao.dart';
import 'package:partners/feature/search_partner_feature/partners_list/data/mapper/quotes_mapper.dart';
import 'package:partners/feature/search_partner_feature/partners_list/domain/model/quote.dart';
import 'package:partners/feature/search_partner_feature/partners_list/domain/repository/quotes_repository.dart';

class QuotesRepositoryImpl implements QuotesRepository {
  final QuotesService _service;
  final QuoteDao _dao;

  QuotesRepositoryImpl(this._service, this._dao);

  @override
  Future<Result<Quotes, FailureResponse>> getQuotes() async {

    return await apiCall(
      api: () => _service.getQuotes(),
      onSuccess: (response) {
        final result = response.parseSuccess();
        final entities = result.getOrNull()?.toEntity() ?? [];
        _dao.deleteAllQuotes();
        _dao.insertQuotes(entities);
        return result;
      },
      onFailure: (response) => response.parseFailure(),
    );
  }
}
