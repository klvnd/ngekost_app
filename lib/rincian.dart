import 'package:flutter/material.dart';

class Rincian extends StatelessWidget {
  const Rincian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          'Rincian Akun',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontFamily: 'ComicSansMS',
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Container(
                width: screenWidth,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                height: 150,
                child: Row(
                  children: [
                    Image.asset(
                      'images/fotoprofil.png',
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nama User',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontFamily: 'ComicSansMS',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Mahasiswa',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontFamily: 'ComicSansMS',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.only(left: 40),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama Lengkap',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'ComicSansMS',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Slamet kopleng',
                      style: TextStyle(
                        fontSize: 11.0,
                        fontFamily: 'ComicSansMS',
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'ComicSansMS',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'World@gmail.com',
                      style: TextStyle(
                        fontSize: 11.0,
                        fontFamily: 'ComicSansMS',
                      ),
                    ),
                    SizedBox(height: 20),
                    // ElevatedButton.icon(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, '/login');
                    //   },
                    //   icon: const Icon(
                    //     Icons.delete,
                    //     color: Colors.black,
                    //   ),
                    //   label: const Text(
                    //     'Delete Account',
                    //     style: TextStyle(
                    //       color: Colors.black,
                    //     ),
                    //   ),
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: Colors.teal[200],
                    //     foregroundColor: Colors.black,
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
