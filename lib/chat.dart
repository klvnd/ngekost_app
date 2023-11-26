import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 130,
        backgroundColor: Colors.white,
        leading: InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const BackButton(color: Colors.black,),
              Image.asset('images/gambarkos.png')
            ],
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kost Salam, Graha Merjosari',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontFamily: 'ComicSansMS',
                fontWeight: FontWeight.bold,
              ),),
            Text(
              'Indah Lowokwaru',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontFamily: 'ComicSansMS',
                fontWeight: FontWeight.bold,
              ),),
          ],
        ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15.0),
              ),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/background.jpg'))
        ),
        child: Column(
          children: [
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: 288,
              height: 60,
              color: Color.fromARGB(246, 253, 253, 253),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.emoji_emotions_outlined)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)
                          )),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Material(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blueAccent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                          ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
