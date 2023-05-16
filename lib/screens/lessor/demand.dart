import 'package:flutter/material.dart';

class DemandPage extends StatelessWidget {
  const DemandPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demand Page'),
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with actual count
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Count: 5', // Replace with actual count
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Do something when button is pressed
                  },
                  child: Text('View'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
