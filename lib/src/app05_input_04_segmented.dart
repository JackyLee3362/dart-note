import 'dart:developer';

import 'package:flutter/material.dart';

enum Calendar { day, week, month, year }

// StatefulWidget...
Calendar calendarView = Calendar.day;

class MySegmentedButton extends StatefulWidget {
  const MySegmentedButton({super.key});

  @override
  State<StatefulWidget> createState() => _MySegmentedButton();
}

class _MySegmentedButton extends State<MySegmentedButton> {
  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Calendar>(
      segments: const [
        ButtonSegment<Calendar>(
          value: Calendar.day,
          label: Text('day'),
          icon: Icon(Icons.calendar_view_day),
        ),
        ButtonSegment<Calendar>(
          value: Calendar.week,
          label: Text('week'),
          icon: Icon(Icons.calendar_view_week),
        ),
        ButtonSegment<Calendar>(
          value: Calendar.month,
          label: Text('month'),
          icon: Icon(Icons.calendar_view_month),
        ),
        ButtonSegment<Calendar>(
          value: Calendar.year,
          label: Text('year'),
          icon: Icon(Icons.calendar_today),
        ),
      ],
      selected: {calendarView},
      onSelectionChanged: (newSelection) {
        setState(() {
          calendarView = newSelection.first;
          log('$newSelection');
        });
      },
    );
  }
}
