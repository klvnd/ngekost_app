import 'package:flutter/material.dart';

class InfoKost extends StatelessWidget {
  const InfoKost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
          
          children: [
            SizedBox(
              height: 248,
              width: 390,
              child: Image.asset('images/kost1.png'),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 20), 
              child: const Text(
                'Kost Salam, Graha Merjosari Indah Lowokwaru',
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'ComicSansMS',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(top: 10, left: 20),
              child: Row(
                children: [
                  IntrinsicWidth(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Kost Putra',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'ComicSansMS',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset('images/location.png'),
                  ),
                  const Text(
                    'Lowokwaru',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'ComicSansMS',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(top: 10, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Spesifikasi Kamar',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'ComicSansMS',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset('images/logokamar.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '3x3 Meter',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset('images/logolistrik.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Tidak termasuk listrik tambahan',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                ],
                
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(top: 10, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Fasilitas Kamar',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'ComicSansMS',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset('images/logokasur.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'kasur',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset('images/logolemari.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Lemari baju',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset('images/logodapur.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Dapur Bersama',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(top: 10, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Fasilitas Kamar Mandi',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'ComicSansMS',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset('images/logobath.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Kamar mandi luar',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset('images/logocloset.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Kloset jongkok',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                ],
                
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Rp. 550.000 / bulan',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'ComicSansMS',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              // BottomNavigationBarItem(
              //   icon: SizedBox(
              //     height: 40,
              //     width: 160,
              //     child: Container(
              //       padding: const EdgeInsets.all(10),
              //       decoration: BoxDecoration(
              //         border: Border.all(
              //           color: Colors.orange,
              //           width: 2,
              //         ),
              //         borderRadius: const BorderRadius.all(Radius.circular(5)),
              //       ),
              //       child: const Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Icon(Icons.chat),
              //           SizedBox(width: 5), 
              //           Text(
              //             'Chat pemilik',
              //             style: TextStyle(
              //               fontSize: 12,
              //               fontFamily: 'ComicSansMS',
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              //   label: '',
              // ),
              
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    // Navigate to Ajukan Sewa Page when tapped
                    Navigator.pushNamed(context, '/chatlibrary');
                  },
                  child: SizedBox(
                    height: 40,
                    width: 160,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.orange,
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.chat),
                          SizedBox(width: 5),
                          Text(
                            'Chat Pemilik',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'ComicSansMS',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                label: '',
              ),

              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    // Navigate to Ajukan Sewa Page when tapped
                    Navigator.pushNamed(context, '/ajukansewa');
                  },
                  child: SizedBox(
                    height: 40,
                    width: 160,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        border: Border.all(
                          color: Colors.orange,
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Ajukan Sewa',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'ComicSansMS',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ],
      ),
    );
  }
}