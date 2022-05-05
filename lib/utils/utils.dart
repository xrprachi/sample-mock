import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class Utils {
  static void dismissKeyboard(BuildContext context) =>
      FocusScope.of(context).requestFocus(FocusNode());

  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  static void hideKeyboardInApp(BuildContext context) {
    var currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus!.unfocus();
    }
  }

  static String convertMillisecondsToFormatDate(String? date,
      {String? format}) {
    if (date != null) {
      var dateTime = DateTime.parse(date);
      return DateFormat(format ?? 'dd MMM yyyy').format(dateTime);
    } else {
      return "";
    }
  }

  static String timeSinceDate(String? dateTime) {
    if (dateTime == null || dateTime.isEmpty) {
      return "";
    }

    DateTime date = DateTime.parse(dateTime);
    final date2 = DateTime.now();
    final difference = date2.difference(date);

    if ((difference.inDays / 7).floor() >= 1) {
      return DateFormat('MMMM d, yyyy').format(date);
    } else if ((difference.inDays).floor() > 1) {
      return '${(difference.inDays).floor()} days ago';
    } else if ((difference.inDays).floor() == 1) {
      return '${(difference.inDays).floor()} yesterday ${DateFormat.Hm().format(date)}';
    } else if (difference.inHours >= 1) {
      return '${difference.inHours} hours ago';
    } else if (difference.inMinutes >= 1) {
      return '${difference.inMinutes} min ago';
    } else {
      return '${difference.inSeconds} sec ago';
    }
  }

  static int daysInMonth({required int monthNum, required int year}) {
    if (monthNum > 12) {
      return 0;
    }
    List<int> monthLength = List.filled(12, 0);
    monthLength[0] = 31;
    monthLength[2] = 31;
    monthLength[4] = 31;
    monthLength[6] = 31;
    monthLength[7] = 31;
    monthLength[9] = 31;
    monthLength[11] = 31;
    monthLength[3] = 30;
    monthLength[8] = 30;
    monthLength[5] = 30;
    monthLength[10] = 30;

    if (leapYear(year) == true) {
      monthLength[1] = 29;
    } else {
      monthLength[1] = 28;
    }

    return monthLength[monthNum - 1];
  }

  static bool leapYear(int year) {
    bool leapYear = false;
    bool leap = ((year % 100 == 0) && (year % 400 != 0));
    if (leap == true) {
      leapYear = false;
    } else if (year % 4 == 0) {
      leapYear = true;
    }

    return leapYear;
  }
}
