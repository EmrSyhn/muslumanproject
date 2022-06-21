import 'package:flutter/material.dart';
// import 'package:anim_search_bar/anim_search_bar.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: 'Books',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_sharp),
            label: 'Peoples',
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color(0xFF53B989),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.logout),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 9, bottom: 9),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Selam Mübarek\n Kullanıcı',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            'assets/images/User.png',
                            height: 60,
                            width: 60,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 228, 228, 228),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        'Kitap Ara',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [
                      //     AnimSearchBar(
                      //       helpText: 'Arama yap',
                      //       width: 300,
                      //       textController: textController,
                      //       onSuffixTap: () {
                      //         setState(
                      //           () {
                      //             textController.clear();
                      //           },
                      //         );
                      //       },
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                color: const Color.fromARGB(255, 228, 228, 228),
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Çok okunan kitaplar'),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Image.asset('assets/images/kitap.png'),
                            iconSize: 100,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Image.asset('assets/images/kitap2.png'),
                            iconSize: 100,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Image.asset('assets/images/kitap3.png'),
                            iconSize: 100,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Image.asset('assets/images/kitap4.png'),
                            iconSize: 100,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                color: const Color.fromARGB(255, 152, 150, 150),
                height: MediaQuery.of(context).size.height * 0.003,
              ),
              const SizedBox(height: 10),
              Container(
                color: const Color.fromARGB(255, 228, 228, 228),
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Image.asset('assets/images/kelaynak.png'),
                            iconSize: 100,
                            onPressed: () {},
                          ),
                          const Text(
                            'Ustad amcık\n Programı 19:00"da',
                            textAlign: TextAlign.center,
                          ),
                          IconButton(
                            icon: Image.asset('assets/images/kelaynak.png'),
                            iconSize: 100,
                            onPressed: () {},
                          ),
                          const Text(
                            'Ustad amcık\n Programı 19:00"da',
                            textAlign: TextAlign.center,
                          ),
                        ],
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
