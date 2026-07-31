import 'package:flutter/material.dart';

class Person {
  String? ad;
  int? yas;
  String? email;
  String? password;
  bool? cinsiyet;
  bool sozlesmeOnay=false;
  Person({
    this.ad,
    this.yas,
    this.email,
    this.password,
    this.cinsiyet,
  });
  Widget yazdir() {
    return Text(
      'Ad/Soyad: $ad\n Yaş: $yas\n Email: $email\n Cinsiyet:${cinsiyet == true ? 'Erkek' : 'Kadın'}',
    );
  }
}
