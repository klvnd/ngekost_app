import 'dart:async';
import 'package:flutter/material.dart';
import 'kos_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 1;
  TextEditingController searchController = TextEditingController();
  PageController _pageController = PageController();
  int _currentPage = 0;

  List<Kos> listKos = [
    Kos(nama: 'Putra', alamat: 'Kost Salam, Graha Merjosari Indah, Lowokwaru', harga: 550000, imageUrl: 'images/kos1.jpeg'),
    Kos(nama: 'Putri', alamat: 'Kost Juta, Jl Siguragura No8, Sumbersari, Lowokwaru', harga: 850000, imageUrl: 'images/kos2.jpeg'),
    Kos(nama: 'Putri', alamat: 'Kost Venxia, Jl Siguragura No6A, Sumbersari, Lowokwaru', harga: 800000, imageUrl: 'images/kos3.jpeg'),
    Kos(nama: 'Campur', alamat: 'Kost Oscar, Jl Mayjen Haryono No.193, Dinoyo, Lowokwaru', harga: 750000, imageUrl: 'images/kos4.jpeg'),
    Kos(nama: 'Putri', alamat: 'Kost Elsaa, Gang 4, Bandulan, Sukun', harga: 650000, imageUrl: 'images/kos5.jpeg'),
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        leadingWidth: 200,
        leading: InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'images/logo_ngekos.png',
                width: 91,
                height: 47,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/notif');
            },
            icon: const Icon(Icons.notifications),
            color: Colors.black,
            iconSize: 30,
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background0.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 15),
            SizedBox(
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Terima Inpo Kost',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ComicSansMS',
                    ),
                  ),
                  Image.asset(
                    'images/logo_rumah.png',
                    width: 110,
                    height: 46,
                  ),
                ],
              ),
            ),
            const Text(
              'Cari Mudah, Harga Bersahabat',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'ComicSansMS',
              ),
            ),
            const SizedBox(height: 15),
            // GestureDetector(
            //   onTap: () {
            //     Navigator.pushNamed(context, '/search');
            //   },
            //   child: Container(
            //     width: 365,
            //     height: 39,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       color: Colors.white,
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.black.withOpacity(0.5),
            //           spreadRadius: 0,
            //           blurRadius: 4,
            //           offset: const Offset(0, 4),
            //         ),
            //       ],
            //     ),
            //     child: Row(
            //       children: [
            //         const Padding(
            //           padding: EdgeInsets.all(8.0),
            //           child: Icon(
            //             Icons.search,
            //             color: Colors.black,
            //           ),
            //         ),
            //         Text(
            //           'cari kost disini',
            //           style: TextStyle(
            //             color: Colors.black.withOpacity(0.5),
            //             fontSize: 14,
            //             fontFamily: 'Comic Sans MS',
            //             fontWeight: FontWeight.w400,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              width: 287,
              height: 170,
              child: PageView.builder(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                itemCount: 3, // Number of images
                itemBuilder: (context, index) {
                  List<String> imagePaths = [
                    'images/kost.png',
                    'images/kost1.png',
                    'images/kost2.png',
                  ];
                  return Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(imagePaths[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 36,
              decoration: const BoxDecoration(
                color: Color.fromARGB(225, 241, 236, 236),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 2,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Daftar Kost',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontFamily: 'ComicSansMS',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ListView.builder(
                  itemCount: listKos.length,
                  itemBuilder: (context, index) {
                    return _buildKosCard(listKos[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildKosCard(Kos kos) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: const BorderSide(color: Colors.black),
      ),
      color: const Color.fromARGB(97, 255, 255, 255),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 80.0,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                image: DecorationImage(
                  image: AssetImage(kos.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    kos.nama,
                    style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    kos.alamat,
                    style: const TextStyle(fontSize: 14.0),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'Harga: Rp ${kos.harga}/bulan',
                    style: const TextStyle(fontSize: 14.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (_selectedIndex) {
      case 0:
        Navigator.pushNamed(context, '/chatlibrary');
        break;
      case 1:
        // Do nothing or navigate to a different page if needed
        break;
      case 2:
        Navigator.pushNamed(context, '/account');
        break;
    }
  }
}
