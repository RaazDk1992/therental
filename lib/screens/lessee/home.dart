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
            UserAccountsDrawerHeader(
              accountName: Text('John Doe'),
              accountEmail: Text('johndoe@example.com'),
              currentAccountPicture: CircleAvatar(
                child: Text('JD'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                // navigate to profile screen
              },
            ),
            ListTile(
              leading: Icon(Icons.request_page),
              title: Text('Request'),
              onTap: () {
                // navigate to request screen
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
