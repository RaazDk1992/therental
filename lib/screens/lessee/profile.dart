import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                // handle profile menu item tap
              },
            ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text('Demand'),
              onTap: () {
                // handle demand menu item tap
              },
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text('Request'),
              onTap: () {
                // handle request menu item tap
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // handle settings menu item tap
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Homepage'),
      ),
    );
  }
}
