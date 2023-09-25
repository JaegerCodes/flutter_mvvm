import 'package:floor/floor.dart';
import 'package:partners/feature/search_partner_feature/partners_list/data/model/db/quote_db.dart';

@dao
abstract class QuoteDao {
  @Query('SELECT * FROM quotes')
  Stream<List<QuoteEntity>> findAllQuotes();

  @insert
  Future<void> insertQuotes(List<QuoteEntity> quotes);

  @Query('DELETE FROM quotes')
  Future<void> deleteAllQuotes();
}

