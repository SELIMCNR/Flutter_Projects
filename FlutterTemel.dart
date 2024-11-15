void main() {
  var degisken = "Dart";
  var degisken2 = 5;
  var degisken3 = 6.8;
  var degisken4 = true;

  String yazi1 = "yazi";
  int numInt = 6;
  double numDouble = 6.8;
  bool boolDeg = true;

  num newNumber = numInt;

  print(yazi1);
  print(numInt);
  print(numDouble);
  print(boolDeg);
  print(degisken2);
  print(degisken4.runtimeType);
  print(boolDeg.runtimeType);
  print(newNumber);

  // final : internet üzerinden gelen değer(değer ilk bilinmiyor) veya
  // const : Değeri bilinen ilk başta değer.

  const String yazi = "StringDart";
  final int sayilar = 36;
  const String yaziSayi = "36";

  print(yazi);
  print(sayilar.toString());

  print("$yazi " " $sayilar");

  print(int.parse(yaziSayi) == sayilar);

  print(int.parse(yaziSayi) > sayilar);
  print(int.parse(yaziSayi) < sayilar);
  print(int.parse(yaziSayi) >= sayilar);
  print(int.parse(yaziSayi) <= sayilar);

  if (sayilar > 20) {
    print("Sayi 1 20'den büyük");
  } else if (sayilar < 20) {
    print("sayi 1 20'den küçük");
  } else {
    print("Sayi 0'a eşit ");
  }

  switch (sayilar) {
    case 15:
      print("sayi 1 değeri 15");
      break;
    case 25:
      print("sayi 1 değeri 25");
      break;
    case 30:
      print("sayi 1 değeri 30");
      break;
    default:
      print("sayi 1 0 ");
      break;
  }

  for (var i = 0; i < 30; i++) {
    print("SAYI : $i");
  }

  var liste = [
    "Elma",
    "Armut",
    "Mandalina",
    5,
    true,
  ];

  print(liste);

  print(liste[1]);

  print(liste[3]);

  for (var i = 0; i < liste.length; i++) {
    print(liste[i]);
  }

  liste.forEach((eleman) {
    print(eleman);
  });

  liste.forEach((eleman) => print(eleman));

  Map sozluk = {
    "meyve": "elma",
    "sayılar": [1, 5, 7, 9]
  };

  print(sozluk);
  print(sozluk['meyve']);
  print(sozluk['sayılar']);
  print(sozluk['sayılar'][1]);

  sozluk.forEach((isim, deger) => print("$isim degeri ise : $deger"));

  List elemanlar = ["Eleman 1", "Eleman 2", "Eleman 3"];

  for (String eleman in elemanlar) {
    print(eleman);
  }

  int sayi = 30;
  while (sayi > 0) {
    print(sayi);

    sayi--;
  }

  void fonksiyon() {
    print("Fonksiyon çalıştı");
  }

  String fonksiyon2() {
    return "Fonksiyon çalıştı";
  }

  fonksiyon;

  print(fonksiyon2);

  String? yazi5 = null;

  if (yazi5 == null) {
    print("değer gelmedi");
  } else {
    print("değer geldi $yazi");
  }

  print(yazi ?? "Null değeri");

  Okul nesne1 = Okul("L", 25);

  nesne1.yazdir();

  List ogrenciler = [
    Okul("C", 20),
    Okul("D", 25),
    Okul("E", 15),
  ];

  for (Okul ogr in ogrenciler) {
    print(ogr.yas10);
  }
}

class Okul {
  String isim10;
  num yas10;
  Okul(this.isim10, this.yas10);

  void yazdir() {
    print("İsim: $isim10, Yaş : $yas10");
  }
}
