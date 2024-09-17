import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          scaffoldBackgroundColor: const Color.fromARGB(200, 255, 255, 255)),
      home: const MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.red),
                  padding: const EdgeInsets.all(3.0),
                  child: const CircleAvatar(
                    foregroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/124432670?v=4"),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hayırlı Günler",
                    ),
                    Text("SELMAN KOYUNCU"),
                    Text("MUHASEBE FİNANS EHİL PERSONELİ")
                  ],
                ),
                const Column(
                  children: [Icon(Icons.wb_sunny_outlined), Text("32°")],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
