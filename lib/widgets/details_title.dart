import 'package:flutter/material.dart';

class DetailsTitle extends StatelessWidget {
  final String subject;

  const DetailsTitle({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.blueAccent, width: 2),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.blueAccent.withValues(alpha: 0.2),
                blurRadius: 8,
                offset: Offset(3, 4),
              )
            ]
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.school, size: 28, color: Colors.blueAccent),
            SizedBox(width: 10),
            Text(
              subject.toUpperCase(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.blueAccent,
                letterSpacing: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
