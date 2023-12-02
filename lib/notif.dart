import 'package:flutter/material.dart';

class Notif extends StatelessWidget {
  const Notif({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notif',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontFamily: 'ComicSansMS',
            fontWeight: FontWeight.bold,
          ),
        ),
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
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage('images/notif.png'), width: 298.0, height: 254.0),
              SizedBox(height: 40.0,),
              Text(
                'Tidak ada notifikasi pada saat ini',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'ComicSansMS',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}