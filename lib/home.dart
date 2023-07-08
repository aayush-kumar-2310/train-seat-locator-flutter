import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _messangerKey = GlobalKey<ScaffoldMessengerState>();
  int _a = 1, _b = 2, _c = 3, _d = 7, _e = 4, _f = 5, _g = 6, _h = 8;

  String showInfo(int seatNum) {
    String seatCategory = "", RowNum = "";
    if (seatNum % 8 == 0) {
      seatCategory = "Side Lower";
      RowNum = ((seatNum / 8).truncate() + 1).toString();
    } else if (seatNum % 8 == 1 || seatNum % 8 == 4) {
      seatCategory = "Lower";
      RowNum = ((seatNum / 8).truncate() + 1).toString();
    } else if (seatNum % 8 == 2 || seatNum % 8 == 5) {
      seatCategory = "Middle";
      RowNum = ((seatNum / 8) + 1).toString();
    } else if (seatNum % 8 == 3 || seatNum % 8 == 6) {
      seatCategory = "Upper";
      RowNum = ((seatNum / 8) + 1).toString();
    } else if (seatNum % 8 == 7) {
      seatCategory = "Side Upper";
      RowNum = ((seatNum / 8) + 1).toString();
    }

    return "The seat is $seatCategory in row number: $RowNum.";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
              ),
              const Text(
                "Seat Finder",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.end,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 9,
                  itemBuilder: ((context, index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.lightBlueAccent.shade100,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    margin: const EdgeInsets.all(10),
                                    color: Colors.pinkAccent.shade100,
                                    padding: const EdgeInsets.all(5),
                                    child: InkWell(
                                      onTap: () => ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content: Text(showInfo(
                                                  (_a + (8 * index)))))),
                                      child: Text(
                                        (_a + (8 * index)).toString(),
                                        style: MyTextStyle.textStyle,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 40,
                                    margin: const EdgeInsets.all(10),
                                    color: Colors.lightGreenAccent.shade100,
                                    padding: const EdgeInsets.all(5),
                                    child: InkWell(
                                      child: Text(
                                        (_b + (8 * index)).toString(),
                                        style: MyTextStyle.textStyle,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 40,
                                    margin: const EdgeInsets.all(10),
                                    color: Colors.orangeAccent.shade100,
                                    padding: const EdgeInsets.all(5),
                                    child: InkWell(
                                      child: Text(
                                        (_c + (8 * index)).toString(),
                                        style: MyTextStyle.textStyle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 40,
                                margin: const EdgeInsets.all(10),
                                color: Colors.redAccent.shade100,
                                padding: EdgeInsets.all(5),
                                child: InkWell(
                                  child: Text(
                                    (_d + (8 * index)).toString(),
                                    style: MyTextStyle.textStyle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    margin: const EdgeInsets.all(10),
                                    color: Colors.pinkAccent.shade100,
                                    padding: EdgeInsets.all(5),
                                    child: InkWell(
                                      child: Text(
                                        (_e + (8 * index)).toString(),
                                        style: MyTextStyle.textStyle,
                                      ),
                                      onTap: () {
                                        debugPrint("abc");
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: 40,
                                    margin: const EdgeInsets.all(10),
                                    color: Colors.lightGreenAccent.shade100,
                                    padding: EdgeInsets.all(5),
                                    child: InkWell(
                                      child: Text(
                                        (_f + (8 * index)).toString(),
                                        style: MyTextStyle.textStyle,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 40,
                                    margin: const EdgeInsets.all(10),
                                    color: Colors.orangeAccent.shade100,
                                    padding: EdgeInsets.all(5),
                                    child: InkWell(
                                      child: Text(
                                        (_g + (8 * index)).toString(),
                                        style: MyTextStyle.textStyle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 40,
                                margin: const EdgeInsets.all(10),
                                color: Colors.redAccent.shade100,
                                padding: EdgeInsets.all(5),
                                child: InkWell(
                                  child: Text(
                                    (_h + (8 * index)).toString(),
                                    style: MyTextStyle.textStyle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTextStyle {
  static const TextStyle textStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
}

// Widget layOut(String seatNum) {}
