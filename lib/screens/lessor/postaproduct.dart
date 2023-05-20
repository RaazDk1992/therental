import 'package:flutter/material.dart';

class PostAProductPage extends StatefulWidget {
  @override
  _PostAProductPageState createState() => _PostAProductPageState();
}

class _PostAProductPageState extends State<PostAProductPage> {
  String _productName = '';
  String _productType = '';
  String _other = '';
  String _photo = '';
  double _rate = 0.0;
  String _per = '';
  bool _termsAndConditions = false;

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
                'Product Name:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 8.0),
              TextField(
                onChanged: (value) {
                  setState(() {
                    _productName = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Enter product name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Product Type:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 8.0),
              DropdownButtonFormField<String>(
                value: _productType,
                onChanged: (value) {
                  setState(() {
                    _productType = value!;
                  });
                },
                items: [
                  DropdownMenuItem(
                    value: 'Type 1',
                    child: Text('Type 1'),
                  ),
                  DropdownMenuItem(
                    value: 'Type 2',
                    child: Text('Type 2'),
                  ),
                  DropdownMenuItem(
                    value: 'Type 3',
                    child: Text('Type 3'),
                  ),
                ],
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Other:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 8.0),
              TextField(
                onChanged: (value) {
                  setState(() {
                    _other = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Enter other details (if any)',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Photo:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 8.0),
              TextField(
                onChanged: (value) {
                  setState(() {
                    _photo = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Enter photo URL',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Rate:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 8.0),
              Slider(
                value: _rate,
                onChanged: (value) {
                  setState(() {
                    _rate = value;
                  });
                },
                min: 0.0,
                max: 100.0,
                divisions: 10,
                label: _rate.toStringAsFixed(1),
              ),
              SizedBox(height: 16.0),
              Text(
                'Per:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 8.0),
              DropdownButtonFormField<String>(
                value: _per,
                onChanged: (value) {
                  setState(() {
                    _per = value!;
                  });
                },
                items: [
                  DropdownMenuItem(
                    value: 'Per 1',
                    child: Text('Per 1'),
                  ),
                  DropdownMenuItem(
                    value: 'Per 2',
                    child: Text('Per 2'),
                  ),
                  DropdownMenuItem(
                    value: 'Per 3',
                    child: Text('Per 3'),
                  ),
                ],
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Checkbox(
                    value: _termsAndConditions,
                    onChanged: (value) {
                      setState(() {
                        _termsAndConditions = value!;
                      });
                    },
                  ),
                  Text(
                    'I agree to the terms and conditions',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Post'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
