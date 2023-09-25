import 'dart:async';

import 'package:floor/floor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:partners/feature/search_partner_feature/partners_list/data/dao/quote_dao.dart';
import 'package:partners/feature/search_partner_feature/partners_list/data/model/db/quote_db.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
part 'app_database.g.dart';

@Database(version: 1, entities: [QuoteEntity])
abstract class AppDatabase extends FloorDatabase {
  QuoteDao get quoteDao;
}

class DatabaseInitializer {
  static Future<AppDatabase> initDatabase() async {
    return await $FloorAppDatabase
        .databaseBuilder('partners.db')
        .build();
  }
}

final appDatabaseProvider = Provider<AppDatabase>((ref) {
  throw UnimplementedError('Intentó acceder a appDatabaseProvider antes de su inicialización');
});

