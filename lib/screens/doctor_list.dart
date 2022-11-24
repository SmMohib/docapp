// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:doctoreapp/utility/colors.dart';
import 'package:doctoreapp/utility/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Doctor_List extends StatelessWidget {
  const Doctor_List({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: purpelColor,
                )),
            // const Text(
            //   'Back',
            //   style: TextStyle(
            //     color: purpelColor,
            //     fontSize: 20,
            //   ),
            // ),
          ],
        ),
        centerTitle: true,
        title: const Text(
          'General Medicine',
          style: TextStyle(
            color: blackColor,
            fontSize: 20,
          ),
        ),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: whiteColor,
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Expanded(
                              flex: 3,
                              child: CircleAvatar(
                                radius: 60,
                                backgroundImage:
                                    AssetImage('assets/Ellipse 6.png'),
                              )),
                          Expanded(
                              flex: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text(
                                      'Dr. Ishtiuq Ahmed',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: blackColor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text(
                                      'General Practitioner',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: blackColor,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(3.0),
                                    child: Text(
                                      'Somerian Clinic - Dubai',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: blackColor,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Icon(Icons.alarm),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '10:00  AM-  8.45 PM',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: blackColor,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: redColor,
                              ),
                              height: 23,
                              width: 55,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text(
                                      '4.5',
                                      style: TextStyle(
                                          color: whiteColor, fontSize: 15),
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: whiteColor,
                                    size: 20,
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: purpelColor,
                              ),
                              height: 40,
                              width: 180,
                              child: Center(
                                  child: Text(
                                'Book Appointment',
                                style:
                                    TextStyle(fontSize: 18, color: whiteColor),
                              )))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          })),
    );
  }
}
