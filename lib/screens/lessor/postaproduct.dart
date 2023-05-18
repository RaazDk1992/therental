import 'package:flutter/material.dart';

class PostAProductPage extends StatefulWidget {
  @override
  _PostAProductPageState createState() => _PostAProductPageState();
}

class _PostAProductPageState extends State<PostAProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post a Product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter name',
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Type',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter type',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Rate',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter rate',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Per',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter per',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Location',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter location',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Phone',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter phone',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'E-mail',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter e-mail',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Viber',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter viber',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'WhatsApp',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter WhatsApp',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Photo',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter photo',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Terms & Conditions',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter terms & conditions',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Post'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
