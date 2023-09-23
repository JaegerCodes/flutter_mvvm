
import 'package:chopper/chopper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:partners/core/network/di/network_module.dart';

part 'quotes_service.chopper.dart';

@ChopperApi()
abstract class QuotesService extends ChopperService {
  @Get(path: '/quotes')
  Future<Response<Map<String, dynamic>>> getQuotes();

  static QuotesService create([ChopperClient? client]) =>
      _$QuotesService(client);
}

final quotesApiProvider = Provider<QuotesService>((ref) {
  final chopperClient = ref.watch(chopperClientProvider);
  return QuotesService.create(chopperClient);
});
