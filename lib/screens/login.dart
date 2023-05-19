import 'package:flutter/material.dart';
import 'package:therental/main.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:therental/translations/locale_keys.g.dart';

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
                Material(
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: LocaleKeys.Username.tr(),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 16),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: LocaleKeys.Password.tr(),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 32),
                        ElevatedButton(
                            child: Text(LocaleKeys.login.tr()),
                            onPressed: () {}),
                        const Text('OR,'),
                        ElevatedButton(
                          child: Text(
                            LocaleKeys.useasguest.tr(),
                            style: const TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red, // Background color
                          ),
                          onPressed: () async {
                            await context.setLocale(Locale('ne'));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
          ),
        ));
  }
}
