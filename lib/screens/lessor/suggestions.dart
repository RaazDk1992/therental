import 'package:flutter/material.dart';

class SuggestionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suggestion Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Product Name'),
              subtitle: Text('Product Description'),
              leading: Icon(Icons.shopping_cart),
            ),
            ListTile(
              title: Text('User'),
              subtitle: Text('Username'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Negotiation Rate'),
              subtitle: Text('Rate'),
              leading: Icon(Icons.monetization_on),
            ),
            ListTile(
              title: Text('Reputation'),
              subtitle: Text('User Reputation'),
              leading: Icon(Icons.star),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Accept'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Reject'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
