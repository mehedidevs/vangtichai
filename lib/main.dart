import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vangtichai/logics.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Vangti(),
    );
  }
}

class Vangti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Logics>(
      create: (context) => Logics(),
      child: Consumer<Logics>(
        builder: (context, allLogics, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("VangtiChai"),
            ),
            body: OrientationBuilder(
              builder: (BuildContext context, Orientation orientation) {
                if (orientation == Orientation.portrait) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                        child: Text(
                          "Taka:  " + allLogics.getAmount(),
                          style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: SizedBox(
                              height:
                                  ((MediaQuery.of(context).size.height) * 3) /
                                      5,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "500 : " + allLogics.total500.toString(),
                                    style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "100 : " + allLogics.total100.toString(),
                                    style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "50 : " + allLogics.total50.toString(),
                                    style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "20 : " + allLogics.total20.toString(),
                                    style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "10 : " + allLogics.total10.toString(),
                                    style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "5 : " + allLogics.total5.toString(),
                                    style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "2 : " + allLogics.total2.toString(),
                                    style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "1 : " + allLogics.total1.toString(),
                                    style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: AspectRatio(
                                          aspectRatio: 1 / 1,
                                          child: GestureDetector(
                                            onTap: () {
                                              allLogics.setAmount("1");
                                              print("clicked : 1 ");
                                            },
                                            child: Container(
                                              color: Colors.black12,
                                              child: const Center(
                                                  child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  "1",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              )),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: AspectRatio(
                                          aspectRatio: 1 / 1,
                                          child: GestureDetector(
                                            onTap: () {
                                              allLogics.setAmount("2");
                                              print("clicked : 2 ");
                                            },
                                            child: Container(
                                              color: Colors.black12,
                                              child: const Center(
                                                  child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              )),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: AspectRatio(
                                          aspectRatio: 1 / 1,
                                          child: GestureDetector(
                                            onTap: () {
                                              allLogics.setAmount("3");
                                              print("clicked : 1 ");
                                            },
                                            child: Container(
                                              color: Colors.black12,
                                              child: const Center(
                                                  child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  "3",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              )),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: AspectRatio(
                                          aspectRatio: 1 / 1,
                                          child: GestureDetector(
                                            onTap: () {
                                              allLogics.setAmount("4");
                                              print("clicked : 1 ");
                                            },
                                            child: Container(
                                              color: Colors.black12,
                                              child: const Center(
                                                  child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  "4",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              )),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: AspectRatio(
                                          aspectRatio: 1 / 1,
                                          child: GestureDetector(
                                            onTap: () {
                                              allLogics.setAmount("5");
                                              print("clicked : 1 ");
                                            },
                                            child: Container(
                                              color: Colors.black12,
                                              child: const Center(
                                                  child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  "5",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              )),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: AspectRatio(
                                          aspectRatio: 1 / 1,
                                          child: GestureDetector(
                                            onTap: () {
                                              allLogics.setAmount("6");
                                            },
                                            child: Container(
                                              color: Colors.black12,
                                              child: const Center(
                                                  child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  "6",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              )),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: AspectRatio(
                                          aspectRatio: 1 / 1,
                                          child: GestureDetector(
                                            onTap: () {
                                              allLogics.setAmount("7");
                                            },
                                            child: Container(
                                              color: Colors.black12,
                                              child: const Center(
                                                  child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  "7",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              )),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: AspectRatio(
                                          aspectRatio: 1 / 1,
                                          child: GestureDetector(
                                            onTap: () {
                                              allLogics.setAmount("8");
                                              print("clicked : 8 ");
                                            },
                                            child: Container(
                                              color: Colors.black12,
                                              child: const Center(
                                                  child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  "8",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              )),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: AspectRatio(
                                          aspectRatio: 1 / 1,
                                          child: GestureDetector(
                                            onTap: () {
                                              allLogics.setAmount("9");
                                            },
                                            child: Container(
                                              color: Colors.black12,
                                              child: const Center(
                                                  child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  "9",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              )),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: AspectRatio(
                                          aspectRatio: 1 / 1,
                                          child: GestureDetector(
                                            onTap: () {
                                              allLogics.setAmount("0");
                                            },
                                            child: Container(
                                              color: Colors.black12,
                                              child: const Center(
                                                  child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  "0",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              )),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: AspectRatio(
                                          aspectRatio: 2 / 1,
                                          child: GestureDetector(
                                            onTap: () {
                                              allLogics.clearAllData();
                                            },
                                            child: Container(
                                              color: Colors.black12,
                                              child: const Center(
                                                  child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Clear",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              )),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                        child: Text(
                          "Taka:  " + allLogics.getAmount(),
                          style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: (MediaQuery.of(context).size.width)/2,
                            height:(MediaQuery.of(context).size.height)-128.0,

                          //  color: Colors.grey,
                            child: Column(

                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,


                                  children: [
                                    Container(
                                      height: (MediaQuery.of(context).size.height)/7,
                                      child: Padding(
                                        padding: const EdgeInsets.only( left: 15,right: 15),
                                        child: Text(
                                          "500 : " +
                                              allLogics.total500.toString(),
                                          style: const TextStyle(
                                              color: Colors.black54,
                                              fontSize: 21,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: (MediaQuery.of(context).size.height)/7,
                                      child: Padding(
                                        padding: const EdgeInsets.only( left: 15,right: 15),
                                        child: Text(
                                          "10 : " +
                                              allLogics.total10.toString(),
                                          style: const TextStyle(
                                              color: Colors.black54,
                                              fontSize: 21,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      height: (MediaQuery.of(context).size.height)/7,
                                      child: Padding(
                                        padding: const EdgeInsets.only( left: 15,right: 15),

                                        child: Text(
                                          "100 : " +
                                              allLogics.total100.toString(),
                                          style: const TextStyle(
                                              color: Colors.black54,
                                              fontSize: 21,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: (MediaQuery.of(context).size.height)/7,
                                      child: Padding(
                                        padding: const EdgeInsets.only( left: 15,right: 15),

                                        child: Text(
                                          "5 : " + allLogics.total5.toString(),
                                          style: const TextStyle(
                                              color: Colors.black54,
                                              fontSize: 21,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      height: (MediaQuery.of(context).size.height)/7,
                                      child: Padding(
                                        padding: const EdgeInsets.only( left: 15,right: 15),
                                        child: Text(
                                          "50 : " +
                                              allLogics.total50.toString(),
                                          style: const TextStyle(
                                              color: Colors.black54,
                                              fontSize: 21,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: (MediaQuery.of(context).size.height)/7,
                                      child: Padding(
                                        padding: const EdgeInsets.only( left: 15,right: 15),
                                        child: Text(
                                          "2 : " + allLogics.total2.toString(),
                                          style: const TextStyle(
                                              color: Colors.black54,
                                              fontSize: 21,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      height: (MediaQuery.of(context).size.height)/7,
                                      child: Padding(
                                        padding: const EdgeInsets.only( left: 15,right: 15),
                                        child: Text(
                                          "20 : " +
                                              allLogics.total20.toString(),
                                          style: const TextStyle(
                                              color: Colors.black54,
                                              fontSize: 21,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: (MediaQuery.of(context).size.height)/7,
                                      child: Padding(
                                        padding: const EdgeInsets.only( left: 15,right: 15),
                                        child: Text(
                                          "1 : " + allLogics.total1.toString(),
                                          style: const TextStyle(
                                              color: Colors.black54,
                                              fontSize: 21,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(

                            width: (MediaQuery.of(context).size.width)/2 ,
                            height:
                                (MediaQuery.of(context).size.height)-128.0,
                            child: Column(


                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: GestureDetector(
                                        onTap: () {
                                          allLogics.setAmount("1");
                                          print("clicked : 1 ");
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            color: Colors.black12,
                                                  height: (MediaQuery.of(context).size.height)/6,
                                            child: const Center(
                                                child: Text(
                                                  "1",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                )),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: GestureDetector(
                                        onTap: () {
                                          allLogics.setAmount("2");
                                          print("clicked : 2 ");
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            color: Colors.black12,
                                            height: (MediaQuery.of(context).size.height)/6,
                                            child: const Center(
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                )),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: GestureDetector(
                                        onTap: () {
                                          allLogics.setAmount("3");
                                          print("clicked : 1 ");
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            color: Colors.black12,
                                            height: (MediaQuery.of(context).size.height)/6,
                                            child: const Center(
                                                child: Text(
                                                  "3",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                )),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: GestureDetector(
                                        onTap: () {
                                          allLogics.setAmount("4");
                                          print("clicked : 1 ");
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            color: Colors.black12,
                                            height: (MediaQuery.of(context).size.height)/6,
                                            child: const Center(
                                                child: Text(
                                                  "4",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                      FontWeight.w800),
                                                )),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [

                                    Expanded(
                                      flex: 1,
                                      child: GestureDetector(
                                        onTap: () {
                                          allLogics.setAmount("5");
                                          print("clicked : 1 ");
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            color: Colors.black12,
                                            height: (MediaQuery.of(context).size.height)/6,
                                            child: const Center(
                                                child: Text(
                                                  "5",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                )),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: GestureDetector(
                                        onTap: () {
                                          allLogics.setAmount("6");
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: (MediaQuery.of(context).size.height)/6,
                                            color: Colors.black12,
                                            child: const Center(
                                                child: Text(
                                                  "6",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                )),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: GestureDetector(
                                        onTap: () {
                                          allLogics.setAmount("7");
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: (MediaQuery.of(context).size.height)/6,
                                            color: Colors.black12,
                                            child: const Center(
                                                child: Text(
                                                  "7",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                      FontWeight.w800),
                                                )),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                   flex: 1,
                                      child: GestureDetector(
                                        onTap: () {
                                          allLogics.setAmount("8");
                                          print("clicked : 8 ");
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: (MediaQuery.of(context).size.height)/6,
                                            color: Colors.black12,
                                            child: const Center(
                                                child: Text(
                                                  "8",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                      FontWeight.w800),
                                                )),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [

                                    Expanded(
                                      flex: 1,
                                      child: GestureDetector(
                                        onTap: () {
                                          allLogics.setAmount("9");
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: (MediaQuery.of(context).size.height)/6,
                                            color: Colors.black12,
                                            child: const Center(
                                                child: Text(
                                                  "9",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                )),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: GestureDetector(
                                        onTap: () {
                                          allLogics.setAmount("0");
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: (MediaQuery.of(context).size.height)/6,
                                            color: Colors.black12,
                                            child: const Center(
                                                child: Text(
                                                  "0",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                      FontWeight.w800),
                                                )),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: GestureDetector(
                                        onTap: () {
                                          allLogics.clearAllData();
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: (MediaQuery.of(context).size.height)/6,
                                            color: Colors.black12,
                                            child: const Center(
                                                child: Text(
                                                  "Clear",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 21,
                                                      fontWeight:
                                                      FontWeight.w800),
                                                )),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
