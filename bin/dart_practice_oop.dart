void main(){
  String Function(int, int, int, int) dateTime;
  dateTime = nextSomeSecondWithDateTime;

  print(dateTime(2,4,0,34));
}

String nextSomeSecondWithDateTime(
    int nowHour, int nowMinute, int nowSecond, int nextSecond){

  DateTime now = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
      nowHour,
      nowMinute,
      nowSecond);

  DateTime nextTime = now.add(Duration(seconds: nextSecond));

  String hourString = nextTime.hour.toString().padLeft(2, '0');
  String minuteString = nextTime.minute.toString().padLeft(2, '0');
  String secondString = nextTime.hour.toString().padLeft(2, '0');

  return "$hourString:$minuteString ($secondString - second)";
}