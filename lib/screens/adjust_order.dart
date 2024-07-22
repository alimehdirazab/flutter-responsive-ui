import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class AdjustOrderScreen extends StatefulWidget {
  const AdjustOrderScreen({super.key});

  @override
  _AdjustOrderScreenState createState() => _AdjustOrderScreenState();
}

class _AdjustOrderScreenState extends State<AdjustOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(),
            Icon(Icons.logout),
            SizedBox(width: 8),
            Text('Log Out', style: TextStyle(fontSize: 18)),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order No: 1234567891', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red)),
                Text('Total Items: 6', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red)),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Add more item action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                padding: EdgeInsets.symmetric(vertical: 12),
              ),
              child: Text('Add More Item', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildServiceCategory(context, 'REGULAR'),
                  _buildServiceItem(context, 'Dryclean', 4.99, 1),
                  _buildServiceItem(context, 'Laundry', 3.99, 1),
                  SizedBox(height: 16),
                  _buildServiceCategory(context, 'HOUSEHOLD'),
                  _buildServiceItem(context, 'Blanket', 19.99, 1),
                  _buildServiceItem(context, 'Pillow Cases', 4.99, 1),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Back action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  ),
                  child: Text('BACK', style: TextStyle(fontSize: 18)),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Adjust action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  ),
                  child: Text('ADJUST', style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceCategory(BuildContext context, String category) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        category,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
      ),
    );
  }

  Widget _buildServiceItem(BuildContext context, String name, double price, int quantity) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$name (\$$price)', style: TextStyle(fontSize: 16)),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.remove, color: Colors.red),
                onPressed: () {
                  // Decrease quantity
                },
              ),
              Text('$quantity', style: TextStyle(fontSize: 16)),
              IconButton(
                icon: Icon(Icons.add, color: Colors.red),
                onPressed: () {
                  // Increase quantity
                },
              ),
              IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  // Delete item
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}