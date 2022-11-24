// ignore_for_file: prefer_const_constructors
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:doctoreapp/utility/colors.dart';
import 'package:doctoreapp/utility/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DoctorProfile extends StatefulWidget {
  DoctorProfile({super.key});

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: whiteColor,
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Back'),
        elevation: -0,
        backgroundColor: purpelColor,
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius:
                // ignore: prefer_const_constructors
                BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            child: Container(
              height: 400,
              width: double.infinity,
              color: purpelColor,
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: CircleAvatar(
                      radius: 80,
                      backgroundColor: redColor,
                      backgroundImage: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/3135/3135715.png')),
                ),
                Text(
                  'Dr.Hamed Bari',
                  style: TextStyle(
                      fontSize: 33,
                      color: whiteColor,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'General Practitioner',
                  style: TextStyle(
                      fontSize: 24,
                      color: whiteColor,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: whiteColor,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '4.9 (220 Reviews)',
                      style: TextStyle(fontSize: 20, color: whiteColor),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ///////book apinment
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: backgroundColor),
                  height: 50,
                  width: 200,
                  child: Center(
                      child: Text(
                    'Book Apinment',
                    style: TextStyle(
                        fontSize: 20,
                        color: purpelColor,
                        fontWeight: FontWeight.w600),
                  )),
                )
              ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    //////General Practitioner
                    Text(
                      'General Practitioner',
                      style: TextStyle(
                          fontSize: 24,
                          color: blackColor,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Somerian Health Clinic',
                      style: TextStyle(
                          fontSize: 20,
                          color: blackColor,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: purpelColor,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
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
                    Text(
                      'Biography',
                      style: TextStyle(
                          fontSize: 24,
                          color: blackColor,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'General PractitionerGeneral PractitionerGeneral PractitionerGeneral PractitionerGeneral PractitionerGeneral PractitionerGeneral PractitionerGeneral PractitionerGeneral PractitionerGeneral Practitioner',
                      style: TextStyle(
                          fontSize: 16,
                          color: blackColor,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
