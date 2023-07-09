import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:train_seat_finder/helper.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int coloredIndex = -1;
  final int _a = 1, _b = 2, _c = 3, _d = 7, _e = 4, _f = 5, _g = 6, _h = 8;
  final _seatNumber = TextEditingController();
  final itemController = ItemScrollController();

  Future scrollToItem() async {
    int jumpIndex = int.tryParse(_seatNumber.text) ?? 0;
    if (jumpIndex <= 72 && jumpIndex > 0) {
      showSnackbar(jumpIndex);
      if (jumpIndex % 8 == 0) {
        jumpIndex = (jumpIndex / 8).truncate() - 1;
      } else {
        jumpIndex = (jumpIndex / 8).truncate();
      }
      setState(() {
        coloredIndex = jumpIndex;
      });
      itemController.scrollTo(
          index: jumpIndex,
          alignment: 0.5,
          duration: const Duration(milliseconds: 300));
    } else {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Enter a valid seat number!")));
    }
  }

  showSnackbar(seatNum) {
    setState(() {
      coloredIndex = -1;
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(showInfo(seatNum))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              controller: _seatNumber,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: IconButton(
                  onPressed: scrollToItem,
                  icon: const Icon(
                    Icons.search,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 15),
            ),
            Expanded(
              child: ScrollablePositionedList.builder(
                itemCount: 9,
                itemScrollController: itemController,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: index == coloredIndex
                            ? Colors.cyanAccent
                            : Colors.lightBlueAccent.shade100,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text("Row ${index + 1}"),
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
                                  padding: const EdgeInsets.all(5),
                                  child: InkWell(
                                    onTap: () => showSnackbar(_a + (8 * index)),
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
                                    onTap: () => showSnackbar(_b + (8 * index)),
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
                                    onTap: () => showSnackbar(_c + (8 * index)),
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
                              padding: const EdgeInsets.all(5),
                              child: InkWell(
                                onTap: () => showSnackbar(_d + (8 * index)),
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
                                  padding: const EdgeInsets.all(5),
                                  child: InkWell(
                                    child: Text(
                                      (_e + (8 * index)).toString(),
                                      style: MyTextStyle.textStyle,
                                    ),
                                    onTap: () => showSnackbar(_e + (8 * index)),
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  margin: const EdgeInsets.all(10),
                                  color: Colors.lightGreenAccent.shade100,
                                  padding: const EdgeInsets.all(5),
                                  child: InkWell(
                                    onTap: () => showSnackbar(_f + (8 * index)),
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
                                  padding: const EdgeInsets.all(5),
                                  child: InkWell(
                                    onTap: () => showSnackbar(_g + (8 * index)),
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
                              padding: const EdgeInsets.all(5),
                              child: InkWell(
                                onTap: () => showSnackbar(_h + (8 * index)),
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
    );
  }
}
