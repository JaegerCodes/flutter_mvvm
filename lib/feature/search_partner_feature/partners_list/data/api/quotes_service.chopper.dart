// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quotes_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_string_interpolations, unnecessary_brace_in_string_interps
final class _$QuotesService extends QuotesService {
  _$QuotesService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = QuotesService;

  @override
  Future<Response<Map<String, dynamic>>> getQuotes() {
    final Uri $url = Uri.parse('/quotes');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }
}
