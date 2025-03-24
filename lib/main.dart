// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:smart_device/Devices.dart';
import 'package:smart_device/more.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  List MyDevices = [
    //[name,pathImage,satute],
    ['Clima', 'assets/img/air-conditioner.png', true],
    ['Fan', 'assets/img/fan.png', false],
    ['Lamps', 'assets/img/lamps.png', false],
    ['Television', 'assets/img/television.png', false],
  ];
  void staeSwitch(value, i) {
    setState(() {
      MyDevices[i][2] = value;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/img/menu.png",
                      height: 40,
                    ),
                    Icon(
                      Icons.person_rounded,
                      size: 40,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Home',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Mohamed Amine",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: sqrt1_2,
                ),
                Text(
                  'Smart Devices ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 450,
                  child: GridView.builder(
                      physics:
                          ScrollPhysics(parent: NeverScrollableScrollPhysics()),
                      itemCount: MyDevices.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 30,
                        crossAxisSpacing: 30,
                        childAspectRatio: 1 / 1.3,
                      ),
                      itemBuilder: (context, index) {
                        return Devices(
                          name: MyDevices[index][0],
                          pathImage: MyDevices[index][1],
                          state: MyDevices[index][2],
                          toggle: (kkk) => staeSwitch(kkk,
                              index), //kk is the same Value (kkk== vlaue!=State)
                        );
                      }),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Others Devices',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Transform.rotate(
                            angle: pi,
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MoreDevices()));
                                },
                                child: Icon(Icons.arrow_back_ios)))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
