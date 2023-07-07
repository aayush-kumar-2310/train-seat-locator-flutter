import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _a = 1, _b = 2, _c = 3, _d = 7, _e = 4, _f = 5, _g = 6, _h = 8;
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
              Expanded(
                child: ListView.builder(
                  itemCount: 9,
                  itemBuilder: ((context, index) {
                    return Card(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    (_a + (index * 8)).toString(),
                                    style: MyTextStyle.textStyle,
                                  ),
                                  Text(
                                    (_b + (index * 8)).toString(),
                                    style: MyTextStyle.textStyle,
                                  ),
                                  Text(
                                    (_c + (index * 8)).toString(),
                                    style: MyTextStyle.textStyle,
                                  ),
                                ],
                              ),
                              Text(
                                (_d + (index * 8)).toString(),
                                style: MyTextStyle.textStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    (_e + (index * 8)).toString(),
                                    style: MyTextStyle.textStyle,
                                  ),
                                  Text(
                                    (_f + (index * 8)).toString(),
                                    style: MyTextStyle.textStyle,
                                  ),
                                  Text(
                                    (_g + (index * 8)).toString(),
                                    style: MyTextStyle.textStyle,
                                  ),
                                ],
                              ),
                              Text(
                                (_h + (index * 8)).toString(),
                                style: MyTextStyle.textStyle,
                              ),
                            ],
                          )
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
