// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MoreDevices extends StatelessWidget {
  const MoreDevices({super.key});

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
                    Text('Devices',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                    Text('Connected',style: TextStyle(color: const Color.fromARGB(124, 0, 0, 0),fontSize: 20,fontWeight: FontWeight.w400)),
                  ],

                ),
              Row(
                children: [
                  Text('On',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
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
                  )
                ],
              )
              ],

            ),
          ],
        ),
      )),
    );
  }
}
