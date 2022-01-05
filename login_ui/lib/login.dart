import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Giris extends StatelessWidget {
  const Giris({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int _index = 0;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Color(0xFF0b0b0b),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: const Text(
                "RB's Black Login Screen",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ), //Üst YAZI
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 80.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF2f2f2f),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, left: 40),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'Kullanıcı adı',
                        hintStyle:
                            TextStyle(color: Color(0xFF949494), fontSize: 15)),
                  ),
                ),
                height: 60,
                width: size.width / 1.3,
              ),
            ), //Kullanıcı Adı
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFF2f2f2f),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(top: 5, left: 40),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: 'Şifre',
                      hintStyle:
                          TextStyle(color: Color(0xFF949494), fontSize: 15)),
                ),
              ),
              height: 60,
              width: size.width / 1.3,
            ), //Kullanıcı A //Şifre
            SizedBox(
              height: 10,
            ),
            Container(
              width: size.width / 1.3,
              height: 20,
              child: Text(
                "şifremi unuttum",
                style: TextStyle(
                    color: Color(0xFF959595),
                    decoration: TextDecoration.underline,
                    fontSize: 15),
                textAlign: TextAlign.right,
              ),
            ), //Şifremi Unuttum
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFb0aeaf),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Giriş Sayfası",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              height: 60,
              width: size.width / 1.3,
            ), //Giriş Yap
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFF4c4c4c),
                    borderRadius: BorderRadius.circular(25)),
                width: size.width / 1.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                            color: _index == 0
                                ? Color(0xFFf8f8f8)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Giriş",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {},
                    )),
                    Expanded(
                        child: GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                            color:
                                _index == 1 ? Colors.black : Color(0xFF4c4c4c),
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Kayıt",
                              style: TextStyle(
                                  color: Color(0xFF8c8c8c),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {},
                    ))
                  ],
                ),
              ),
            ), //Switch
          ],
        ),
      ),
    );
  }
}
