import 'package:exam_app/models/exam.dart';
import 'package:flutter/cupertino.dart';

import 'exam_card.dart';

class ExamsList extends StatefulWidget {
  final List<Exam> exams;

  const ExamsList({super.key, required this.exams});

  @override
  State<StatefulWidget> createState() => _ExamsListState();
}

class _ExamsListState extends State<ExamsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.exams.length,
      itemBuilder: (context,index) {
        return ExamCard(exam: widget.exams[index]);
      },
    );
  }
}