import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:proje4/models/person.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KullaniciFormu(),
    );
  }
}

class KullaniciFormu extends StatefulWidget {
  const KullaniciFormu({super.key});

  @override
  State<KullaniciFormu> createState() => _KullaniciFormuState();
}

class _KullaniciFormuState extends State<KullaniciFormu> {
  Person person = Person();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Form",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUnfocus,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    autofocus: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Ad Soyad boş olamaz';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (newValue) => person.ad = newValue,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      labelText: 'Ad/Soyad',
                      hint: Text('Adınızı ve soyadınızı giriniz'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Yaş boş olamaz';
                      } else if (int.parse(value) < 18) {
                        return 'Yaş 18 den küçük olamaz';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (newValue) => person.yas = int.parse(newValue!),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Yaş',
                      hint: Text('Yaşınızı giriniz'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email adresi boş olamaz';
                      } else if (!EmailValidator.validate(value)) {
                        return 'Uygun bir adres giriniz';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (newValue) => person.email = newValue,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hint: Text('ornek@gmail.com'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Şifre boş olamaz';
                      } else if (value.length < 8) {
                        return 'Şifreniz en az 8 haneli olmalıdır';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (newValue) => person.password = newValue,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      labelText: 'Şifre',
                      hint: Text('Şifrenizi giriniz'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  RadioGroup<bool>(
                    groupValue: person.cinsiyet,
                    onChanged: (value) {
                      setState(() {
                        person.cinsiyet = value!;
                      });
                    },
                    child: const Row(
                      children: [
                        Text('Cinsiyetiniz'),
                        Radio(value: true),
                        Text('Erkek'),
                        Radio(value: false),
                        Text('Kadın'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  CheckboxListTile(
                    title: const Text('Gizlilik sözleşmesini kabul ediyorum'),
                    value: person.sozlesmeOnay,
                    onChanged: (value) {
                      setState(() {
                        person.sozlesmeOnay = value!;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _formKey.currentState!.reset();
                          setState(() {
                            person.sozlesmeOnay = false;
                            person.cinsiyet = null;
                          });
                        },
                        child: const Text('Sıfırla'),
                      ),
                      const SizedBox(width: 15),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate() &&
                              person.cinsiyet != null &&
                              person.sozlesmeOnay) {
                            _formKey.currentState!.save();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: person.yazdir(),
                                backgroundColor: Colors.green,
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Girdiğiniz değerleri kontrol edin',
                                ),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        },
                        child: const Text('Kaydet'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
