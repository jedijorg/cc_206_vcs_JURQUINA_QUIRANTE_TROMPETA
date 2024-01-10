import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_checklist/flutter_checklist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Planner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChecklistCalendarScreen(),
    );
  }
}

class ChecklistCalendarScreen extends StatefulWidget {
  @override
  _ChecklistCalendarScreenState createState() => _ChecklistCalendarScreenState();
}

class _ChecklistCalendarScreenState extends State<ChecklistCalendarScreen> {
  CalendarController _calendarController = CalendarController();
  ChecklistController _checklistController = ChecklistController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Planner'),
      ),
      body: Column(
        children: [
          TableCalendar(
            calendarController: _calendarController,
          ),
          Expanded(
            child: Checklist(
              controller: _checklistController,
              items: [
                'Book flight',
                'Reserve accommodation',
                'Plan activities',
                // Add more checklist items
              ],
            ),
          ),
        ],
      ),
    );
  }
}

