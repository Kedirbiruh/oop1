import 'package:oop1/participant.dart';

void main () {
  var t1 = Participant("Abel", 35, weight: 80.0, height: 1.70, status: "aktiv", grade:1.3);
  var t2 = Participant("Sahra", 19, height: 1.75, );

  print("Participant 1");
  t1.introduction();
  print("Participant 2");
  t2.introduction();

}
