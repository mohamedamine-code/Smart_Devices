// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smart_device/Devices.dart';

class MoreDevices extends StatefulWidget {
  @override
  State<MoreDevices> createState() => _MoreDevicesState();
}

class _MoreDevicesState extends State<MoreDevices> {
  List MyDevices = [
    //[name,pathImage,satute],
    ['Clima', 'assets/img/air-conditioner.png', true],
    ['Fan', 'assets/img/fan.png', false],
    ['Lamps', 'assets/img/lamps.png', false],
    ['Television', 'assets/img/television.png', false],
  ];

  void ChangeState(value, index) {
    setState(() {
      MyDevices[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      onTap:
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_new)),
                Icon(Icons.more_vert_outlined),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Devices',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text('Connected',
                        style: TextStyle(
                            color: const Color.fromARGB(124, 0, 0, 0),
                            fontSize: 20,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
                Row(
                  children: [
                    Text('On',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400)),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: MyDevices.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Devices(
                        name: MyDevices[index][0],
                        pathImage: MyDevices[index][1],
                        state: MyDevices[index][2],
                        toggle: (p0) {
                          return ChangeState(p0, index);
                        },
                      ),
                    );
                  }),
            )
          ],
        ),
      )),
    );
  }
}
