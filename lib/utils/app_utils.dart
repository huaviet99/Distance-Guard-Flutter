import 'package:intl/intl.dart';

class AppUtils {
  static String toNumberWithCommas(int number) {
    var formatter = NumberFormat('###,###,###');
    return formatter.format(number);
  }

  static String convertMillisecondsToDateFormat(int milliseconds) {
    var formatter = DateFormat('MMMM dd, yyyy HH:mm:ss');
    var dateTime = DateTime.fromMillisecondsSinceEpoch(milliseconds);
    return formatter.format(dateTime);
  }
}
