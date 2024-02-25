import 'package:flutter/material.dart';
import 'package:variants/page/login_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Image.asset(
              'images/bg.png',
            ),
            Expanded(
              child: Container(
                color: Colors.black,
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Coffee so good,\nyour taste buds\nwill love it.',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'The best grain, the finest roast,\nthe powerful flavour.',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 100,
                              vertical: 30), // Mengatur padding tombol
                          primary: Color.fromARGB(255, 160, 73,
                              41), // Memberikan warna latar belakang
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20), // Mengatur sudut tombol
                          ),
                        ),
                        child: Text(
                          'Get Started',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
