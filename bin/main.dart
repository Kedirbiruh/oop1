import 'dart:io';
import 'package:oop1/participant.dart';

void main() {
  var t1 = Participant(
    firstName: 'Abel',
    lastName: 'Müller',
    age: 30,
    birthDate: DateTime(2000, 6, 9),
    finalGrade: 1.3,
    status: 'student',
  );

  var t2 = Participant(firstName: 'Sahra', lastName: 'Sadiq',  age: 25,);

  var t3 = Participant(
    firstName: 'Kai',
    lastName: 'Raucher',
    age: 28,
    finalGrade: 2.3,
  );

  t1.printInfo();
  t2.printInfo();
  print(t3);
  print(t1);

    // Das wirft jetzt einen Fehler, weil Note > 6
  try {
    t1.grade = 10.0;
  } catch(e) {
    print('Fehler:$e');
  }  

   // Das wirft ebenfalls einen Fehler beim Erstellen
  try {
    var t2 = Participant(
      firstName: 'Sahra',
      lastName: 'Sadiq',
      age: 25,
      finalGrade: 10.0,
    );
  } catch (e) {
    print('Fehler beim Erstellen: $e');
  }
}

