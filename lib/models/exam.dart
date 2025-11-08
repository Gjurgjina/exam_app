class Exam{
  String subject;
  final DateTime dateTime;
  final List<String> classrooms;

  Exam({
    required this.subject,
    required this.dateTime,
    required this.classrooms
  });

  static List<Exam> exams = [
    Exam(
        subject: "МИС",
        dateTime: DateTime(2025,11,5,10,0),
        classrooms: ["B1.1","B1.2"],
    ),
    Exam(
        subject: "ДИАНС",
        dateTime: DateTime(2025,11,1,11,0),
        classrooms: ["B2.1","B2.2"],
    ),
    Exam(
        subject: "Бази на податоци",
        dateTime: DateTime(2025,11,24,9,0),
        classrooms: ["B3.2"],
    ),
    Exam(
        subject: "Интегирани системи",
        dateTime: DateTime(2025,11,26,10,30),
        classrooms: ["B3.3"],
    ),
    Exam(
      subject: "Веројатност",
      dateTime: DateTime(2025,11,22,10,30),
      classrooms: ["B3.1","B3.2"],
    ),
    Exam(
      subject: "Калкулус",
      dateTime: DateTime(2025,11,23,11,30),
      classrooms: ["B2.3"],
    ),
    Exam(
      subject: "Веб програмирање",
      dateTime: DateTime(2025,11,26,12,30),
      classrooms: ["B1.3","B1.4"],
    ),
    Exam(
      subject: "СКИТ",
      dateTime: DateTime(2025,11,26,11,0),
      classrooms: ["B2.3","B2.4"],
    ),
    Exam(
      subject: "Тимски проект",
      dateTime: DateTime(2025,11,25,10,30),
      classrooms: ["B3.2","B3.3"],
    ),
    Exam(
      subject: "Оперативни системи",
      dateTime: DateTime(2025,11,21,10,30),
      classrooms: ["B1.3"],
    ),
    Exam(
      subject: "Алгоритми",
      dateTime: DateTime(2025,11,20,12,0),
      classrooms: ["B2.2"],
    ),
    Exam(
      subject: "Е-влада",
      dateTime: DateTime(2025,11,23,10,40),
      classrooms: ["B1.2"],
    ),
  ];
}