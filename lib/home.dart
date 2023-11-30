import 'dart:async';
import 'package:flutter/material.dart';

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

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 2), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
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
            onPressed: () {},
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
            Column(
              children: [
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
                Container(
                  width: 365,
                  height: 39,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/search');
                    },
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'cari kost disini',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14,
                            fontFamily: 'Comic Sans MS',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                        'Rekomendasi Kost',
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
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  width: 370,
                  child: Row(
                    children: [
                      Container(
                        height: 183,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/infokost');
                          },
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                height: 101,
                                width: 180,
                                image: AssetImage('images/kost1.png'),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Putra',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  fontFamily: 'ComicSansMS',
                                ),
                              ),
                              Text(
                                'Kost Salam, Graha Merjosari',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'ComicSansMS',
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 18,
                                  ),
                                  Text('Lowokwaru',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'ComicSansMS',
                                      )),
                                ],
                              ),
                              Text(
                                'Rp.550.000/bulan',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'ComicSansMS',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                      Container(
                        height: 183,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/infokost');
                          },
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                height: 101,
                                width: 180,
                                image: AssetImage('images/kost.png'),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Putri',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  fontFamily: 'ComicSansMS',
                                ),
                              ),
                              Text(
                                'Kost Izzah, Jl candi Mendut',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'ComicSansMS',
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 18,
                                  ),
                                  Text(
                                    'Blimbing',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'ComicSansMS',
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Rp.800.000/bulan',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'ComicSansMS',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
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
