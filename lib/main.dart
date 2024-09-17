import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';

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
                      color: ColorCon.cicleAvatar),
                  padding: EdgeCon.cicleAvatar,
                  child: const CircleAvatar(
                    foregroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/124432670?v=4"),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hayırlı Günler \uD83C\uDF24",
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
          ),
          const IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Kıdem Gününüz"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                Text("1 yıl"),
                                Text("11 ay"),
                                Text("16 gün")
                              ],
                            ),
                            Icon(
                              Icons.directions_walk_sharp,
                              size: 50,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Vardiya"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.directions_walk_sharp,
                              size: 50,
                            ),
                            Column(
                              children: [
                                Text("N0818.Vardiya"),
                                Text("08:00 - 18:00"),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.calendar_month_outlined,
                              color: ColorCon.takvim,
                            ),
                          ),
                          TextSpan(
                            text: "  22.08.2024 - Perşembe",
                            style: TextStyle(
                              color: ColorCon.takvim,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      "10 Sa. 21 Dk.",
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
                const IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Card(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Giriş: 07:45"),
                              ),
                            ),
                            Card(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Çıkış 18:06"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Net Süre"),
                              Text("9 Sa."),
                            ],
                          ),
                        ),
                      ),
                      Expanded(child: SizedBox())
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Yemek Listesi"),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.food_bank_outlined,
                      size: 50,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 100,
                        child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return const Card(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.dining_outlined),
                                  Text("Yemek Menüsü")
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Card(
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.notifications_none,
                      size: 50,
                    ),
                    Text("Bildirimler")
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
