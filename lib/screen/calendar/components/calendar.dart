import 'package:cosc/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/marked_date.dart';
import 'package:flutter_calendar_carousel/classes/multiple_marked_dates.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart' show DateFormat;

class Calendar extends StatefulWidget {
  Calendar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final DateTime _currentDate = DateTime.now();
  DateTime _selectedDate = DateTime.now();
  String _currentMonth = DateFormat.yMMMM().format(DateTime.now());
  DateTime _targetDateTime = DateTime.now();
  final Color _selectedDateButtonColor = Colors.transparent;
  final Color _selectedDateBorderColor = Colors.transparent;

  List<MarkedDate> markedDates = [];

  @override
  void initState() {
    // 이 부분은 api 로 받아 온 값을 이용해 list 생성
    // 이전, 다음달의 경우엔 해당 달로 이동 시에 추가로 api call
    markedDates.addAll([
      MarkedDate(color: secondPointVeryLight, textStyle: const TextStyle(color: Colors.black), date: DateTime(2023, 1, 1)),
      MarkedDate(color: secondPointVeryLight, textStyle: const TextStyle(color: Colors.black), date: DateTime(2023, 1, 2)),
      MarkedDate(color: secondPointVeryLight, textStyle: const TextStyle(color: Colors.black), date: DateTime(2023, 1, 3)),
      MarkedDate(color: secondPointVeryLight, textStyle: const TextStyle(color: Colors.black), date: DateTime(2023, 1, 4)),
      MarkedDate(color: secondPointMiddleLight, textStyle: const TextStyle(color: Colors.black), date: DateTime(2023, 1, 5)),
      MarkedDate(color: secondPointMiddleLight, textStyle: const TextStyle(color: Colors.black), date: DateTime(2023, 1, 6)),
      MarkedDate(color: secondPointMiddleLight, textStyle: const TextStyle(color: Colors.black), date: DateTime(2023, 1, 7)),
      MarkedDate(color: secondPointMiddleLight, textStyle: const TextStyle(color: Colors.black), date: DateTime(2023, 1, 8)),
      MarkedDate(color: secondPointMiddleLight, textStyle: const TextStyle(color: Colors.black), date: DateTime(2023, 1, 9)),
      MarkedDate(color: secondPointNoLight, textStyle: const TextStyle(color: Colors.black), date: DateTime(2023, 1, 10)),
      MarkedDate(color: secondPointNoLight, textStyle: const TextStyle(color: Colors.black), date: DateTime(2023, 1, 11)),
      MarkedDate(color: secondPointNoLight, textStyle: const TextStyle(color: Colors.black), date: DateTime(2023, 1, 12)),
      MarkedDate(color: secondPointNoLight, textStyle: const TextStyle(color: Colors.black), date: DateTime(2023, 1, 13)),
      MarkedDate(color: secondPointNoLight, textStyle: const TextStyle(color: Colors.black), date: DateTime(2023, 1, 14)),
      MarkedDate(color: secondPointNoLight, textStyle: const TextStyle(color: Colors.black), date: DateTime(2023, 1, 15)),
    ]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final calendarWidget = CalendarCarousel<Event>(
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      todayButtonColor: secondPointNoLight, // TODO : 그 날의 푼 문제 수에 따라
      todayBorderColor: Colors.transparent,
      iconColor: Colors.white,
      thisMonthDayBorderColor: Colors.grey,
      selectedDayButtonColor: _selectedDateButtonColor, // TODO : 선택한 날짜의 색상 논의 필요
      selectedDayBorderColor: _selectedDateBorderColor, // TODO : 선택한 날짜의 색상 논의 필요

      headerTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
      markedDateMoreCustomTextStyle: const TextStyle(color: Colors.black),
      weekendTextStyle: const TextStyle(color: Colors.black),
      markedDateCustomTextStyle: const TextStyle(fontSize: 18, color: Colors.blue),

      multipleMarkedDates: MultipleMarkedDates(markedDates: markedDates),
      // todayBorderColor: Colors.green,

      weekFormat: false,
      height: 400.0,
      // selectedDateTime: _selectedDate, // TODO : 선택한 날짜에 색상을 주게 된다면 설정하자.
      // targetDateTime: _targetDateTime,
      customGridViewPhysics: const NeverScrollableScrollPhysics(),
      showHeader: true,
      showWeekDays: false,
      headerText: _currentMonth,
      minSelectedDate: _currentDate.subtract(const Duration(days: 720)),
      maxSelectedDate: _currentDate.add(const Duration(days: 720)),
      onDayPressed: (date, events) {
        setState(() => _selectedDate = date);
        events.forEach((event) => print(event.title));
      },
      onCalendarChanged: (DateTime date) {
        setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: calendarWidget,
          ), //
        ],
      ),
    );
  }
}