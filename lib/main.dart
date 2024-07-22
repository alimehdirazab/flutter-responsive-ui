import 'package:dcd_ipad/screens/adjust_order.dart';
import 'package:dcd_ipad/screens/employee_passcode.dart';
import 'package:dcd_ipad/screens/scan_bag.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Dryclean Depot',
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const PasscodeScreen(),
            '/scanBag': (context) => const ScanBagScreen(),
            '/adjustOrder': (context) => AdjustOrderScreen(),
            // Add other routes here
          },
        );
      },
    );
  }
}
