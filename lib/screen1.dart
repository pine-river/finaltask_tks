import 'package:final4/screen2.dart';
import 'package:flutter/material.dart';
import 'dart:math';

var which = 0;
String msg1 = "結果を表示します";
String msg2 = "結果を表示します";
String msg3 = "結果を表示します";
String msg4 = "結果を表示します";

String checkWin(double winProbability) {
  var random = Random();
  double randomValue = random.nextDouble();
  return randomValue < winProbability ? "あたり" : "ハズレ";
}

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  int atari = 0;
  int hazure = 0;
  int sosu = 0;
  List<int> whichHistory = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ギャンブル心理実験"),
        elevation: 3,
      ),
      body: Column(
        children: [
          Container(
            child: Text("総数:$sosu\nあたり:$atari\nハズレ:$hazure", style: TextStyle(fontSize: 34),textAlign: TextAlign.center,),
            width: 170,
            margin: EdgeInsets.only(top:20,bottom: 30),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black, // 枠線の色を指定
                width: 2.0, // 枠線の幅を指定
              ),
            ),
            ),


          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                          onTap: () async {
                            setState(() {
                              which = 1;
                              sosu++;
                              String result = checkWin(0.5);
                              msg1 = "結果：" + result;
                              if (result == "あたり") {
                                atari++;
                              } else {
                                hazure++;
                              }
                              whichHistory.add(which);
                            });
                            if (sosu >= 100) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Screen2(whichHistory);
                                }),
                              );
                            }
                            await Future.delayed(Duration(seconds: 1));
                            setState(() {
                              msg1 = "結果を表示します";
                            });
                          },
                          child: AnimatedOpacity(
                            opacity: msg1 == "結果を表示します" ? 1.0 : 0.0,
                            duration: Duration(seconds: 1),
                            child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                              ),
                              child: Center(
                                child: Text(
                                  "A",
                                  style: TextStyle(fontSize: 60),
                                ),
                              ),
                            ),
                          )),
                      Text(
                        msg1,
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                          onTap: () async {
                            setState(() {
                              which = 2;
                              sosu++;
                              String result = checkWin(0.2);
                              msg2 = "結果：" + result;
                              if (result == "あたり") {
                                atari++;
                              } else {
                                hazure++;
                              }
                              whichHistory.add(which);
                            });
                            if (sosu >= 100) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Screen2(whichHistory);
                                }),
                              );
                            }
                            await Future.delayed(Duration(seconds: 1));
                            setState(() {
                              msg2 = "結果を表示します";
                            });
                          },
                          child: AnimatedOpacity(
                            opacity: msg2 == "結果を表示します" ? 1.0 : 0.0,
                            // ボタンが非表示の場合は opacity が 0.0 になる
                            duration: Duration(seconds: 1),
                            child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                              ),
                              child: Center(
                                child: Text(
                                  "B",
                                  style: TextStyle(fontSize: 60),
                                ),
                              ),
                            ),
                          )),
                      Text(
                        msg2,
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: 300,
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        msg3,
                        style: TextStyle(fontSize: 24),
                      ),
                      GestureDetector(
                          onTap: () async {
                            setState(() {
                              which = 3;
                              sosu++;
                              String result = checkWin(0.7);
                              msg3 = "結果：" + result;
                              if (result == "あたり") {
                                atari++;
                              } else {
                                hazure++;
                              }
                              whichHistory.add(which);
                            });
                            if (sosu >= 100) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Screen2(whichHistory);
                                }),
                              );
                            }
                            await Future.delayed(Duration(seconds: 1));
                            setState(() {
                              msg3 = "結果を表示します";
                            });
                          },
                          child: AnimatedOpacity(
                            opacity: msg3 == "結果を表示します" ? 1.0 : 0.0,
                            // ボタンが非表示の場合は opacity が 0.0 になる
                            duration: Duration(seconds: 1),
                            child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.red,
                              ),
                              child: Center(
                                child: Text(
                                  "C",
                                  style: TextStyle(fontSize: 60),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        msg4,
                        style: TextStyle(fontSize: 24),
                      ),
                      GestureDetector(
                          onTap: () async {
                            setState(() {
                              which = 4;
                              sosu++;
                              String result = checkWin(0.8);
                              msg4 = "結果：" + result;
                              if (result == "あたり") {
                                atari++;
                              } else {
                                hazure++;
                              }
                              whichHistory.add(which);
                            });
                            if (sosu >= 100) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Screen2(whichHistory);
                                }),
                              );
                            }
                            await Future.delayed(Duration(seconds: 1));
                            setState(() {
                              msg4 = "結果を表示します";
                            });
                          },
                          child: AnimatedOpacity(
                            opacity: msg4 == "結果を表示します" ? 1.0 : 0.0,
                            // ボタンが非表示の場合は opacity が 0.0 になる
                            duration: Duration(seconds: 1),
                            child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.green,
                              ),
                              child: Center(
                                child: Text(
                                  "D",
                                  style: TextStyle(fontSize: 60),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                  width: 400,
                  color: Colors.black87,
                  child: Text(
                    "結果を確認しながらボタンを押してください",
                    style: TextStyle(color: Colors.white, fontSize: 18,),
                      textAlign: TextAlign.center,
                  ))
            ],
          )),
        ],
      ),
    );
  }
}
