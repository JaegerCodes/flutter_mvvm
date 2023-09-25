
import 'package:partners/feature/search_partner_feature/partners_list/data/model/db/quote_db.dart';

class Quote {
  final String phrase;
  final String author;

  Quote({required this.phrase, required this.author});
}

class Quotes {
  final List<Quote> quotes;

  Quotes({required this.quotes});
}

extension QuoteMapper on Quotes {

  List<QuoteEntity> toEntity() {
    return quotes
      .map((quoteResponse) => QuoteEntity(
      phrase: quoteResponse.phrase,
      author: quoteResponse.author,
    )).toList();
  }
}
