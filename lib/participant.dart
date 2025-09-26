import 'dart:io';

class Participant {
  String firstName;
  String lastName;
  int age;
  DateTime? birthDate;
  double? finalGrade;
  double? weight;
  double? height;
  String? status;

  Participant({
    required this.firstName, // müssen beim Erstellen eines Participants angegeben werden.
    required this.lastName,
    required this.age,
    this.birthDate,
    this.finalGrade,
    this.weight,
    this.height,
    this.status = 'Aktiv',
  }) {
    // Note prüfen
    if (finalGrade != null && (finalGrade! < 0 || finalGrade! > 6)) {
      throw ArgumentError('Note muss zwischen 0 und 6 liegen');
    }
    finalGrade = finalGrade;
  }

  // Beispiel-Setter mit Validierung (optional)
  set grade(double? value) {
    if (value != null && (value < 0 || value > 6)) {
      throw ArgumentError('Note muss zwischen 0 und 6 liegen');
    }
    finalGrade = value;
  }

  // Getter: zusammengesetzter Wert
  String get fullName => '$firstName $lastName';

  void printInfo() {
    print('Name: $fullName');
    print('Status: $status');
    print('Alter: $age');
    if (birthDate != null) {
      // ist nicht keer / existiert ein Wert
      print(
        'Geburtstag: ${birthDate!.day.toString().padLeft(2, '0')}.${birthDate!.month.toString().padLeft(2, '0')}.${birthDate!.year}',
      );
      // Wenn birthDate einen Wert hat → das Datum
    } else {
      print(
        'Geburtstag: nicht angegeben',
      ); // Wenn birthDate null ist → "nicht angegeben"
    }
    if (finalGrade != null) {
      print('Abschlussnote: ${finalGrade!}');
    } else {
      print('Abschlussnote: nicht vorhanden');
    }
  }

  @override
  String toString() {
    return 'Teinehmer(fullName: $fullName, status: $status, age: $age)';
  }
}
