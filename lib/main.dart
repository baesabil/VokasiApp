import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const VokasiApp());

class VokasiApp extends StatelessWidget {
  const VokasiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/vokasi_logo-white.png'),
              const SizedBox(height: 25),
              // ignore: prefer_const_constructors
              Text(
                'sekolah vokasi',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Unggul, Mandiri & Berkarakter',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      theme: ThemeData(scaffoldBackgroundColor: const Color(0XffEE8301)),
      debugShowCheckedModeBanner: false,
    );
  }
}
