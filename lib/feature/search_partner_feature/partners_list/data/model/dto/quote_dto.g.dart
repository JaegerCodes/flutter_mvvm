// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuotesResponse _$QuotesResponseFromJson(Map<String, dynamic> json) =>
    QuotesResponse(
      quotes: (json['quotes'] as List<dynamic>)
          .map((e) => QuoteResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuotesResponseToJson(QuotesResponse instance) =>
    <String, dynamic>{
      'quotes': instance.quotes,
    };

QuoteResponse _$QuoteResponseFromJson(Map<String, dynamic> json) =>
    QuoteResponse(
      phrase: json['phrase'] as String,
      author: json['author'] as String,
    );

Map<String, dynamic> _$QuoteResponseToJson(QuoteResponse instance) =>
    <String, dynamic>{
      'phrase': instance.phrase,
      'author': instance.author,
    };
