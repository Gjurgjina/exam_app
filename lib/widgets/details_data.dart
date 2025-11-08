import 'package:flutter/material.dart';

import '../models/exam.dart';

class DetailsData extends StatelessWidget {
  final Exam exam;

  const DetailsData({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final difference = exam.dateTime.difference(now);

    final days = difference.inDays;
    final hours = difference.inHours.remainder(24);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.calendar_today, color: Colors.blueGrey),
              SizedBox(width: 8),
              Text(
                "${exam.dateTime.day}.${exam.dateTime.month}.${exam.dateTime.year}",
                style: TextStyle(fontSize: 19),
              ),
            ],
          ),
          SizedBox(height: 9),
          Row(
            children: [
              Icon(Icons.access_time, color: Colors.orange),
              SizedBox(width: 8),
              Text(
                "${exam.dateTime.hour.toString().padLeft(2, '0')}:${exam.dateTime.minute.toString().padLeft(2, '0')}",
                style: TextStyle(fontSize: 19),
              ),
            ],
          ),
          SizedBox(height: 9),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.location_on, color: Colors.blueAccent),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  exam.classrooms.join(", "),
                  style: TextStyle(fontSize: 19),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Icon(Icons.timer, color: Colors.deepPurple),
              SizedBox(width: 8),
              Text(
                "Преостанато време: ${days.abs()} дена,${hours.abs()} часа",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
