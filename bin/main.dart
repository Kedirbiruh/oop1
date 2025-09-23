import 'package:oop1/teilnehmer.dart' as oop1;

void main () {
  var t1 = oop1.Teilnehmer("Abel", 35, gewicht: 80.0, groesse: 1.70, status: "aktiv");
  var t2 = oop1.Teilnehmer("Sahra", 19, groesse: 1.75, );

  t1.info();
  print("----");
  t2.info();
  print("--");
}
