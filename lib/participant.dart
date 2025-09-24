class Participant {
  String name;
  int age;
  DateTime? birthday;
  double? grade;
  double? weight;
  double? height;
  String? status;

  Participant(
    this.name,
    this.age, {
    this.birthday,
    this.grade,
    this.weight,
    this.height,
    this.status,
  });

  void introduction() {
    print("Hi, ich heiße $name, bin $age Jahre alt.");
    if (weight != null && height != null) {
      print("Ich wiege ${weight} kg und bin ${height} m.");
    }
    if (grade != null) {
      print("Meine Abschlussnote ist $grade.");
    }
    if (status != null) {
      print("Status: $status");
    } else {
      print("Noch keine Abschlussnote");
    }
  }
}
