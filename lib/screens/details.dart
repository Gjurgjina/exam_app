import 'package:exam_app/widgets/details_title.dart';

import 'package:flutter/material.dart';

import '../models/exam.dart';
import '../widgets/details_data.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Exam exam = ModalRoute.of(context)!.settings.arguments as Exam;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Детали за испит",
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26)),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade200,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            DetailsTitle(subject: exam.subject),
            SizedBox(height: 10),
            Divider(),
            SizedBox(height: 20),
            DetailsData(exam: exam),
          ],
        ),
      ),
    );
  }
}
