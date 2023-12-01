import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
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
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              //search bar
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
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                    hintText: 'Cari kost disini',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 14,
                      fontFamily: 'Comic Sans MS',
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              
              // Card
              SizedBox(
                height: 100.0,
                child: Card(
                  margin: const EdgeInsets.all(8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Colors.black),
                  ),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 80.0,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            ),
                            image: DecorationImage(
                              image: AssetImage('images/kost1.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'kos.nama',
                                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'kos.alamat',
                                style: TextStyle(fontSize: 14.0),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Harga: Rp /bulan',
                                style: TextStyle(fontSize: 14.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
