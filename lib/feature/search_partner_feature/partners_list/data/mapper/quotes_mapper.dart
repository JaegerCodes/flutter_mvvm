import 'package:chopper/chopper.dart';
import 'package:partners/core/shared/failure.dart';
import 'package:partners/core/shared/result_handler.dart';
import 'package:partners/feature/search_partner_feature/partners_list/data/error/quotes_failure.dart';
import 'package:partners/feature/search_partner_feature/partners_list/data/model/quote.dart';
import 'package:partners/feature/search_partner_feature/partners_list/domain/model/quote.dart';

extension ResponseParsing on Response {
  Result<Quotes, FailureResponse> parseSuccess() {
    if (this.body is Map<String, dynamic>) {
      return Result.success(QuotesResponse.fromJson(this.body).toDomain());
    } else {
      return Result.failure(InvalidQuotesData());
    }
  }
}

extension QuotesMapper on QuotesResponse {
  Quotes toDomain() {
    return Quotes(
      quotes: quotes
          .map((quoteResponse) => Quote(
        phrase: quoteResponse.phrase,
        author: quoteResponse.author,
      )).toList(),
    );
  }
}
