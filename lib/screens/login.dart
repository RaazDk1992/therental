import 'package:flutter/material.dart';

import '../data/languagemenu.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String _username;
  late String _password;
  String? selectedValue = languageList.first.value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Login'),
            const SizedBox(
              width: 50.0,
            ),
            DropdownButton(
              items: languageList,
              style: TextStyle(color: Colors.white),
              dropdownColor: Color.fromARGB(255, 20, 110, 245),
              value: selectedValue,
              onChanged: (value) => {
                setState(() {
                  selectedValue = value!;
                })
              },
            )
          ],
        ),
      ),
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  onChanged: (value) {
                    setState(() {
                      _username = value;
                    });
                  },
                  decoration: InputDecoration(hintText: 'Username'),
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    //TODO: Implement login functionality
                  },
                  child: Text('Login'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    //TODO: Implement register functionality
                  },
                  child: Text('Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
