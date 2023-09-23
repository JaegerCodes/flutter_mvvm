import 'package:chopper/chopper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:partners/core/config/app_config.dart';

final chopperClientProvider = Provider<ChopperClient>((ref) {
  final config = ref.watch(environmentConfigProvider);

  return ChopperClient(
    baseUrl: Uri.parse(config.baseUrl),
    converter: const JsonConverter(),
  );
});
