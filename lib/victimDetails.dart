import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home1.dart';
import 'package:flutter_application_1/fooddonationForm.dart';
import 'package:flutter_application_1/victimForm.dart';
import 'colors.dart' as colors;
import 'package:flutter_application_1/fooddonationForm.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class victiminfo extends StatefulWidget {
  const victiminfo({super.key});

  @override
  State<victiminfo> createState() => _victiminfoState();
}

// ignore: camel_case_types
class _victiminfoState extends State<victiminfo> {
  void _navigateToNextWidget() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
            const VictimForm(), // the widget you want to navigate to
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colors.ColorPalette.green,
              colors.ColorPalette.lightGreen,
            ],
            begin: FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
              width: MediaQuery.of(context).size.width, // acc to device size
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        // capture the gesture on icon
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home1()),
                          );
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: colors.ColorPalette.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      const Icon(
                        Icons.info_outline,
                        size: 20,
                        color: colors.ColorPalette.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Propose Victims",
                    style: TextStyle(
                      fontSize: 30,
                      color: colors.ColorPalette.white,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Help us in Proposing Victims!!",
                    style: TextStyle(
                      fontSize: 20,
                      color: colors.ColorPalette.white,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                // white bg content
                decoration: const BoxDecoration(
                    color: colors.ColorPalette.white,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(70))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Text(
                            "You have not lived today until doing something for someone who can never repay you",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: colors.ColorPalette.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Text(
                        'You can provide information about victims of food crisis.As a contributor to Sight For All we make sure your provided information will not be disclose to any external party.',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'Click here to continuue',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: _navigateToNextWidget,
                      style: ElevatedButton.styleFrom(
                        primary: colors.ColorPalette
                            .darkGreen, // set the background color of the button
                      ), // call function to navigate to next widget
                      child: const Text("Continue"),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
