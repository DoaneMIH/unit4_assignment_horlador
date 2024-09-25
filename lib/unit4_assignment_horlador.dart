import 'package:flutter/material.dart';

class myData extends StatelessWidget {
  const myData({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doane Marie I. Horlador',
      theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Colors.blueAccent.shade200),
          useMaterial3: true),
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "DOANE MARIE I. HORLADOR",
              style: TextStyle(fontSize: 17, fontFamily: 'Arial'),
            ),
            backgroundColor: Colors.blueAccent.shade100,
          ),
          body: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 300,
                    width: 1528,
                    child: Image.asset(
                      'assets/image/background.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      top: 90,
                      left: 30,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: const Color.fromARGB(221, 255, 255, 255),
                                width: 3)),
                        child: const CircleAvatar(
                          radius: 100,
                          backgroundImage: AssetImage('assets/image/pic.jpg'),
                        ),
                      )),
                  const Positioned(
                      top: 220,
                      left: 250,
                      child: Text(
                        "DOANE MARIE I. HORLADOR",
                        style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "GET TO KNOW ME MORE",
                style: TextStyle(
                    fontFamily: 'Tahoma',
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: 500,
                color: const Color.fromARGB(255, 230, 175, 193),
              ),
              _data("Birthdate", "March 23, 2003", Icons.cake_rounded),
              _data("Contact Details", "09112233445", Icons.contact_phone),
              _data("Location", "Brgy. Dimagiba, Dimakita, Iloilo City",
                  Icons.place),
              _data("Skills", "Coding, Running, Talking, Walking", Icons.code),
              const Text(
                "WHO IS DOANE",
                style: TextStyle(
                    fontFamily: 'Calibri',
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: const Text(
                  "Doane is a 3rd-year college student pursuing a Bachelor of Science in Information Technology (BSIT). With a love for coding and because She have no choice, Doane loves to do a lot of things but lazy to do it. Doane loves dog, cat, birds, crocodile, and all of the animals except worms",
                  style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )),
    );
  }
}

Widget _data(String title, String details, IconData icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(13),
          border:
              Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: 2)),
      child: Row(
        children: [
          Icon(icon, size: 30),
          const SizedBox(width: 10),
          Expanded(
              child: Text(
            '$title : $details',
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ))
        ],
      ),
    ),
  );
}
