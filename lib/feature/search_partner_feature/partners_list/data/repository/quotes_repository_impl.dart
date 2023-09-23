import 'package:partners/core/network/response_handler/error_response.dart';
import 'package:partners/core/network/response_handler/response_handler.dart';
import 'package:partners/core/shared/failure.dart';
import 'package:partners/core/shared/result_handler.dart';
import 'package:partners/feature/search_partner_feature/partners_list/data/api/quotes_service.dart';
import 'package:partners/feature/search_partner_feature/partners_list/data/mapper/quotes_mapper.dart';
import 'package:partners/feature/search_partner_feature/partners_list/domain/model/quote.dart';
import 'package:partners/feature/search_partner_feature/partners_list/domain/repository/quotes_repository.dart';

class QuotesRepositoryImpl implements QuotesRepository {
  final QuotesService _service;

  QuotesRepositoryImpl(this._service);

  @override
  Future<Result<Quotes, FailureResponse>> getQuotes() async {
    return await apiCall(
          () => _service.getQuotes(),
          (response) => response.parseSuccess(),
          (response) => response.parseFailure(),
    );
  }
}
