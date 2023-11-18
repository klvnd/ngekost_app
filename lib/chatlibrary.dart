import 'package:flutter/material.dart';

class ChatLib extends StatelessWidget { 
  const ChatLib({ Key? key }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          'Chat',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontFamily: 'ComicSansMS',
            fontWeight: FontWeight.bold,
          ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          )
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
              Image(image: AssetImage('images/nochat.png'), width: 298.0, height: 254.0),
              SizedBox(height: 40.0,),
              Text(
                'Tidak ada perakapan pada saat ini',
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
