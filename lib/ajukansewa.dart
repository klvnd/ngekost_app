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
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15))
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
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15))
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
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15))
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
        color: Colors.transparent,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/splashproses');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.orange,
                  minimumSize: const Size(339, 44),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(
                      color: Colors.orange,
                      width: 3.0,
                    ),
                  ),
                ),
                child: const Text(
                  'Ajukan Sewa',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.orange,
                    fontFamily: 'ComicSansMS',
                    fontWeight: FontWeight.bold,
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
