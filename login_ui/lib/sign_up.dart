import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Kayit extends StatelessWidget {
  const Kayit({Key? key}) : super(key: key);

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
                top: 70.0,
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
                      hintText: 'Mail',
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
                  "Kayıt Ol",
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
              padding: const EdgeInsets.only(top: 120.0),
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
                            color: _index == 1
                                ? Color(0xFF4c4c4c)
                                : Color(0xFF4c4c4c),
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Giriş",
                              style: TextStyle(
                                  color: Color(0xFF8c8c8c),
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
                                _index == 0 ? Colors.white : Color(0xFF0b0b0b),
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Kayıt",
                              style: TextStyle(
                                  color: Colors.black,
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
