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
            const SizedBox(height: 20),
            const Text(
              'Nama',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'ComicSansMS',
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              width: 337,
              height: 47,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Tulis Nama',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Tanggal Mulai Ngekos',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'ComicSansMS',
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              width: 337,
              height: 47,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Tanggal-Bulan-Tahun',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Berapa bulan ngekos',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'ComicSansMS',
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              width: 337,
              height: 47,
              child: TextField(
                decoration: InputDecoration(
                  hintText: '2 Bulan',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent, // Set the background color to transparent
        elevation: 0, // Remove the elevation (shadow)
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Adjust horizontal padding as needed
              child: ElevatedButton(
                onPressed: () {
                  // Add your action when the "Ajukan Sewa" button is pressed
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue, // Set the button background color
                  minimumSize: Size(339, 44), // Set the minimum width and height
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // Set the button border radius
                  ),
                ),
                child: const Text(
                  'Ajukan Sewa',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'ComicSansMS',
                    fontWeight: FontWeight.bold
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
