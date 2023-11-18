import 'package:flutter/material.dart';

class AjukanSewa extends StatelessWidget {
  const AjukanSewa({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background1.png'),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100),
              child: const Text(
                'Pilih tanggal mulai ngekos',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'ComicSansMS',
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(

            ),
          ],
        ),
      ),
    );
  }
}
