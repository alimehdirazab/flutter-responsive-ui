import 'dart:io';

import 'package:dcd_ipad/media_query/responsive_layout.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Assuming ResponsiveDesign class is defined in a separate file and imported here
// import 'responsive_design.dart';

class ScanBagScreen extends StatefulWidget {
  const ScanBagScreen({super.key});

  @override
  _ScanBagScreenState createState() => _ScanBagScreenState();
}

class _ScanBagScreenState extends State<ScanBagScreen> {
  @override
  Widget build(BuildContext context) {
    // Screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Create an instance of ResponsiveDesign
    ResponsiveLayout responsive = ResponsiveLayout(
      screenWidth: screenWidth,
      screenHeight: screenHeight,
      isWeb: kIsWeb,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/logo_black.png',
              height: responsive.appBarImageHeight,
              width: 350,
              fit: BoxFit.fill,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text(
                    'U', // Replace with 'U'
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: responsive.appBarFontSize,
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  'HELLO JOHN',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: responsive.appBarFontSize,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xFFCA1511),
                        child: Icon(
                          Icons.logout,
                          color: Colors.white,
                          size: responsive.appBarIconSize,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'LOG OUT',
                        style: TextStyle(
                            color: const Color(0xFFCA1511),
                            fontSize: responsive.appBarFontSize,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: responsive.topPadding - 200),
              Text(
                'TAGGING STATION',
                style: TextStyle(
                  fontSize: responsive.fontTitle,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 150),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/adjustOrder');
                      // Handle tap for Scan Bag
                    },
                    child: Container(
                      width: screenWidth * 0.4,
                      height: 400,
                      decoration: BoxDecoration(
                        color: const Color(0xFFCA1511),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/scan.png',
                            height: 200,
                            width: 200,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Scan Bag',
                            style: TextStyle(
                              fontSize: responsive.fontButton + 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 100),
                  InkWell(
                    onTap: () {
                      // Handle tap for Pickup Order
                    },
                    child: Container(
                      width: screenWidth * 0.4,
                      height: 400,
                      decoration: BoxDecoration(
                        color: const Color(0xFFCA1511),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/pickup.png',
                            height: 200,
                            width: 200,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Pickup Order',
                            style: TextStyle(
                              fontSize: responsive.fontButton + 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
