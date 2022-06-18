import 'package:flutter/material.dart';
import 'package:muslumanproject/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 84, 212, 151),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13),
              child: Column(
                children: [
                  Image.asset('assets/images/1.png'),
                  const SizedBox(height: 10),
                  const Text(
                    "Klavuz Kitap \n Kur'an yolunda",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Bu uygulama Allah yolundan şaşanları\n CEZALANDIRIR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                  ),
                  const SizedBox(height: 20),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const LoginPage()),
                        ),
                      );
                    },
                    icon: const Icon(Icons.skip_next),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
