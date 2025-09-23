class Teilnehmer {
  String name;
  int alter;
  DateTime? geburtstagsdatum;
  double? abschlussnote;
  double? gewicht;
  double? groesse;
  String? status;


  Teilnehmer(this.name, this.alter, 
  {this.geburtstagsdatum, this.abschlussnote, 
  this.gewicht, this.groesse,  this.status,});


  void info() {
    print("Hi, ich heiße $name, bin $alter Jahre alt.");
    if (gewicht!= null && groesse!= null) {
      print("Ich wiege ${gewicht} kg und bin ${groesse} m.");
    }
    if (abschlussnote!= null) {
      print("Ich habe $abschlussnote.");
    }
    if (status != null) {
    print("Status: $status");
    }else {
      print("Noch keine Abschlussnote");
    }
  }
}
