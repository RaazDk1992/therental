import 'package:flutter/material.dart';

import '../data/languagemenu.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:therental/routes/constraints.dart';
import 'package:therental/translations/locale_keys.g.dart';
import 'package:flutter/rendering.dart';

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
                // ignore: avoid_print

                setState(() {
                  selectedValue = value!;
                  changeLocale(selectedValue);
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
                  decoration: InputDecoration(
                    hintText: LocaleKeys.Username.tr(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: LocaleKeys.Password.tr(),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    //TODO: Implement login functionality
                  },
                  child: Text(
                    LocaleKeys.login.tr(),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    //TODO: Implement register functionality
                  },
                  child: Text(
                    LocaleKeys.register.tr(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  changeLocale(val) async {
    await context.setLocale(Locale(val));
  }
}
