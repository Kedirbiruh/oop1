import 'package:oop1/teilnehmer.dart' as oop1;

void main () {
  var t1 = oop1.Teilnehmer("Abel", 35, gewicht: 80.0, groesse: 1.70, status: "aktiv", abschlussnote:1.3);
  var t2 = oop1.Teilnehmer("Sahra", 19, groesse: 1.75, );

  print("Teilnehmer 1");
  t1.info();
  print("Teilnehmer 2");
  t2.info();
}
