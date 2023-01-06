import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(LotteryApp());
}

class LotteryApp extends StatefulWidget {
  const LotteryApp({Key? key}) : super(key: key);

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  int x = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lottery App"),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Lottery Wining number is 5",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                child: Center(
                  child: x == 5
                      ? Container(
                          color: Colors.green,
                          height: 600,
                          width: 500,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Icon(
                                  Icons.access_alarms,
                                  color: Colors.red[900],
                                  size: 100,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Congratulations you have Won the Lottery,\nKeep Playing",
                                    style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 35,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Better luck next time,your number is $x\n try again",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                ),
              ),
            ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(6);
            setState(() {});
          },
          child: Icon(
            Icons.refresh,
          ),
        ),
      ),
    );
  }
}
