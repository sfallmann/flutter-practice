import 'package:meta/meta.dart';
import 'package:intl/intl.dart';

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  String get formattedAmount {
    return '\$${this.amount}';
  }

  String get formattedDate {
    return DateFormat('E, MMM d   K:m a').format(this.date);
  }

  const Transaction(
      {@required this.id,
      @required this.title,
      @required this.amount,
      @required this.date});
}
