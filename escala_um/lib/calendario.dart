import 'package:escala_um/constants.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calendario extends StatefulWidget {
  const Calendario({Key? key}) : super(key: key);

  @override
  _CalendarioState createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: kShadowColor,
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: SfCalendar(
        view: CalendarView.week,
        firstDayOfWeek: 1,
        dataSource: MeetingDataSource(getAppointments()),
      ),
    );
  }
}

List<Appointment> getAppointments() {
  var _count = 8;
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 00, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));
  meetings.add(Appointment(
      startTime: DateTime(2021, 11, 01, 08, 00),
      endTime: DateTime(2021, 11, 01, 09, 00),
      subject: 'Grupo A',
      color: Color(0xFF44BC9C),
      recurrenceRule: 'FREQ=DAILY;COUNT=${_count};INTERVAL=4;BYDAY=SU,SA',
      isAllDay: false));
  meetings.add(Appointment(
      startTime: DateTime(2021, 11, 02, 08, 00),
      endTime: DateTime(2021, 11, 02, 09, 00),
      subject: 'Grupo B',
      color: Color(0xFF84C8B6),
      recurrenceRule: 'FREQ=DAILY;COUNT=8;INTERVAL=4;BYDAY=SU,SA',
      isAllDay: false));
  meetings.add(Appointment(
      startTime: DateTime(2021, 11, 03, 08, 00),
      endTime: DateTime(2021, 11, 03, 09, 00),
      subject: 'Grupo C',
      color: Color(0xFF328A72),
      recurrenceRule: 'FREQ=DAILY;COUNT=7;INTERVAL=4;BYDAY=SU,SA',
      isAllDay: false));
  meetings.add(Appointment(
      startTime: DateTime(2021, 11, 04, 08, 00),
      endTime: DateTime(2021, 11, 04, 09, 00),
      subject: 'Grupo D',
      color: Color(0xFF163D33),
      recurrenceRule: 'FREQ=DAILY;COUNT=7;INTERVAL=4;BYDAY=SU,SA',
      isAllDay: false));

  // meetings.add(Appointment(
  //     startTime: DateTime(2021, 11, 04, 09, 00),
  //     endTime: DateTime(2021, 11, 04, 10, 00),
  //     subject: 'Grupo D2',
  //     color: Colors.red,
  //     recurrenceRule: 'FREQ=DAILY;COUNT=7;INTERVAL=4;BYDAY=SU,SA',
  //     isAllDay: false));

  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
