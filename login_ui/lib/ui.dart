import 'package:flutter/material.dart';
import 'package:login_screen/login.dart';
import 'package:login_screen/sign_up.dart';

class Anasayfa extends StatelessWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(color: Color(0xFF0b0b0b)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFb0aeaf),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: TextButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Giris())),
                child: Text(
                  "Giriş Sayfası",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              height: 60,
              width: 200,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFb0aeaf),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: TextButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Kayit())),
                child: Text(
                  "Kayıt Sayfası",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              height: 60,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
