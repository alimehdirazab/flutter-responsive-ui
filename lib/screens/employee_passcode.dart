import 'package:dcd_ipad/media_query/responsive_layout.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Assuming ResponsiveDesign class is defined in a separate file and imported here
// import 'responsive_design.dart';

class PasscodeScreen extends StatefulWidget {
  const PasscodeScreen({super.key});

  @override
  _PasscodeScreenState createState() => _PasscodeScreenState();
}

class _PasscodeScreenState extends State<PasscodeScreen> {
  String _passcode = '';

  @override
  Widget build(BuildContext context) {
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
          children: [
            Image.asset(
              'assets/images/logo_black.png',
              height: responsive.appBarImageHeight,
              width: 350,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: responsive.topPadding - 120),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'TAGGING STATION',
                    style: TextStyle(
                      fontSize: responsive.fontTitle,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 80.0),
                  Text(
                    'ENTER EMPLOYEE PASSCODE',
                    style: TextStyle(
                      fontSize: responsive.fontTitle,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 25.0),
                  SizedBox(
                    width: 720, // Set your desired width
                    height: 55, // Set your desired height
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: '**************',
                        hintStyle: TextStyle(
                          fontSize: 40.0,
                          color: Color(0xFFCCCCCC),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0), // Center the text vertically
                      ),
                      textAlignVertical: TextAlignVertical.center,
                      obscureText: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: responsive.fontLabel,
                      ),
                      onChanged: (value) {
                        setState(() {
                          _passcode = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  if (_passcode.isNotEmpty)
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/scanBag');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF05a831),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0), // Set the padding of the button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              50.0), // Set the border radius of the button
                        ),
                      ),
                      child: Text(
                        'CONTINUE',
                        style: TextStyle(
                          fontSize: responsive.fontButton,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
