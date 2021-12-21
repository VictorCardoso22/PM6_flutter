import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:menu_sidebar/escala/constants.dart';
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
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: SfCalendar(
        view: CalendarView.week,
        // selectionDecoration: BoxDecoration(
        //   color: Colors.green,
        //   border: Border.all(color: Colors.red, width: 2),
        //   borderRadius: const BorderRadius.all(Radius.circular(4)),
        //   shape: BoxShape.rectangle,
        // ),

        // firstDayOfWeek: 1,
        dataSource: MeetingDataSource(getAppointments()),
      ),
    );
  }
}

List<Appointment> getAppointments() {
  return _addDias();

  // List<Appointment> meetings = <Appointment>[];
  // final DateTime today = DateTime.now();
  // final DateTime startTime =
  //     DateTime(today.year, today.month, today.day, 00, 0, 0);
  // final DateTime endTime = startTime.add(const Duration(hours: 2));

  // meetings.add(Appointment(
  //     startTime: DateTime(_anoInicio, _mesInicio, _diaInicio, _horaInicio, 00),
  //     endTime:
  //         DateTime(_anoInicio, _mesInicio, _diaInicio, _horaInicio + 1, 00),
  //     subject: 'Grupo A',
  //     color: const Color(0xFF44BC9C),
  //     recurrenceRule: 'FREQ=DAILY;COUNT=${_diasMes};INTERVAL=4;BYDAY=SU,SA',
  //     isAllDay: false));

  // meetings.add(Appointment(
  //     startTime: DateTime(2021, 12, 02, 08, 00),
  //     endTime: DateTime(2021, 12, 02, 09, 00),
  //     subject: 'Grupo B',
  //     color: Color(0xFF84C8B6),
  //     recurrenceRule: 'FREQ=DAILY;COUNT=8;INTERVAL=4;BYDAY=SU,SA',
  //     isAllDay: false));
}

_addDias() {
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 00, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));

  var _diaInicio = 1;
  var _mesInicio = 12;
  var _anoInicio = 2021;
  var _diasMes = 8;
  var _horaInicio = 08;

  meetings.add(Appointment(
      startTime: DateTime(_anoInicio, _mesInicio, _diaInicio, _horaInicio, 00),
      endTime:
          DateTime(_anoInicio, _mesInicio, _diaInicio, _horaInicio + 1, 00),
      subject: 'Grupo A',
      color: const Color(0xFF44BC9C),
      recurrenceRule: 'FREQ=DAILY;COUNT=$_diasMes;INTERVAL=4;BYDAY=SU,SA',
      isAllDay: false));

  meetings.add(Appointment(
      startTime: DateTime(2021, 12, 02, 08, 00),
      endTime: DateTime(2021, 12, 02, 09, 00),
      subject: 'Grupo B',
      color: const Color(0xFF84C8B6),
      recurrenceRule: 'FREQ=DAILY;COUNT=8;INTERVAL=4;BYDAY=SU,SA',
      isAllDay: false));

  meetings.add(Appointment(
      startTime: DateTime(2021, 12, 03, 08, 00),
      endTime: DateTime(2021, 12, 03, 09, 00),
      subject: 'Grupo C',
      color: const Color(0xFF80d1b0),
      recurrenceRule: 'FREQ=DAILY;COUNT=8;INTERVAL=4;BYDAY=SU,SA',
      isAllDay: false));

  meetings.add(Appointment(
      startTime: DateTime(2021, 12, 04, 08, 00),
      endTime: DateTime(2021, 12, 04, 09, 00),
      subject: 'Grupo D',
      color: const Color(0xFF809999),
      recurrenceRule: 'FREQ=DAILY;COUNT=8;INTERVAL=4;BYDAY=SU,SA',
      isAllDay: false));

  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
