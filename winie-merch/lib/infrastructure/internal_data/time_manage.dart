import 'package:intl/intl.dart';

String timeText(DateTime dateTime) {
  var whenDay = dayText(dateTime);

  return DateFormat('HH:mm a').format(dateTime) + ', $whenDay';
}

String timeTextOnly(DateTime dateTime) {
  return DateFormat('HH:mm a').format(dateTime).toLowerCase();
}

String dayText(DateTime dateTime) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final tomorrow = DateTime(now.year, now.month, now.day + 1);
  final yesterday = DateTime(now.year, now.month, now.day - 1);

  final aDate = DateTime(dateTime.year, dateTime.month, dateTime.day);
  var whenDay = '';
  if (aDate == today) {
    whenDay = 'Today';
  } else if (aDate == tomorrow) {
    whenDay = 'Tomorrow';
  } else if (aDate == yesterday) {
    whenDay = 'Yesterday';
  } else {
    whenDay = DateFormat('d MMM').format(
      dateTime,
    );
  }
  return whenDay;
}

class TimeManage {
  static String calculateTime(String timePosted) {
    final timeCommentPosted = DateTime.parse(timePosted);

    final timeNow = DateTime.now();

    final timeDifference = timeNow.difference(timeCommentPosted).inSeconds;

    if ((timeDifference / 86400).floor() > 1) {
      final days = (timeDifference / 86400).floor();
      return "${days}d";
    } else if ((timeDifference / 86400).floor() == 1) {
      final days = (timeDifference / 86400).floor();
      return "${days}d";
    } else if ((timeDifference / 3600).floor() > 1) {
      final hrs = (timeDifference / 3600).floor();
      return "${hrs}h";
    } else if ((timeDifference / 3600).floor() == 1) {
      final hrs = (timeDifference / 3600).floor();
      return "${hrs}h";
    } else if ((timeDifference / 60).floor() > 1) {
      final mins = (timeDifference / 60).floor();
      return "${mins}m";
    } else if ((timeDifference / 60).floor() == 1) {
      final mins = (timeDifference / 60).floor();
      return "${mins}m";
    } else if (timeDifference > 1) {
      return "${timeDifference}s";
    } else if (timeDifference == 0) {
      return "${timeDifference}s";
    } else {
      return "Just now";
    }
  }
}
