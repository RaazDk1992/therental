import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(3.0),
            child: SafeArea(
                child: Column(
              children: [
                Container(
                  child: Image.asset("assets/images/banner.gif"),
                ),
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 32),
                      ElevatedButton(
                        child: Text('Login'),
                        onPressed: () {
                          // TODO: Implement login logic
                        },
                      ),
                      const Text('OR,'),
                      ElevatedButton(
                        child: Text(
                          'Continue as Guest',
                          style: const TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, // Background color
                        ),
                        onPressed: () {
                          // TODO: Implement login logic
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ),
        ));
  }
}
