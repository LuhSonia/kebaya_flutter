import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class LoginGooglePage extends StatelessWidget {
  const LoginGooglePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [Image.asset("assets/bg_kebaya.jpg", fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          ),
          Positioned(
            bottom: 50,
            left: 10,
            right: 10,
            child: Card(
              color: Colors.black.withOpacity(0.3),
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)),
              child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Cari kebaya treen,sekarang !", 
                  style: GoogleFonts.montserrat(
                    fontSize: 20, 
                    color: Colors.white, 
                    fontWeight: FontWeight.bold),
                )
              ),
              Padding(
                padding: 
                  const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                child: Text(
                  "Untuk dapat menikmati semua fitur kami,Anda perlu login terlebih dahulu", 
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 12, color: Colors.white)),
              ),
              Padding(
                padding: 
                const EdgeInsets.only(left: 16, right: 16, bottom: 32),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                          },
                          child: Text("LOGIN", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                        ),
                      
                    ]),
                  ),
                ),
              )
              ]),
            ))

          ],
        ),
      ),
    );
  }
}
