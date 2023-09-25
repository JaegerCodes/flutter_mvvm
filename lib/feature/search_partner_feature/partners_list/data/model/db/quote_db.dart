import 'package:floor/floor.dart';

@Entity(tableName: 'quotes')
class QuoteEntity {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final String phrase;
  final String author;

  QuoteEntity({this.id, required this.phrase, required this.author});
}
