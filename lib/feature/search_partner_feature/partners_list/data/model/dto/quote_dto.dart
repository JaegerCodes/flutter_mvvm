import 'package:json_annotation/json_annotation.dart';

part 'quote_dto.g.dart';

@JsonSerializable()
class QuotesResponse {
  final List<QuoteResponse> quotes;

  QuotesResponse({required this.quotes});

  factory QuotesResponse.fromJson(Map<String, dynamic> json) => _$QuotesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$QuotesResponseToJson(this);
}

@JsonSerializable()
class QuoteResponse {
  final String phrase;
  final String author;

  QuoteResponse({required this.phrase, required this.author});

  factory QuoteResponse.fromJson(Map<String, dynamic> json) => _$QuoteResponseFromJson(json);
  Map<String, dynamic> toJson() => _$QuoteResponseToJson(this);
}
