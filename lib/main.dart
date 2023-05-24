import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:therental/routes/approutes.dart';
import 'package:therental/screens/login.dart';
import 'package:therental/translations/codegen_loader.g.dart';

import 'package:flutter/foundation.dart';
// core FlutterFire dependency
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
// FlutterFire's Firebase Cloud Messaging plugin
import 'package:firebase_messaging/firebase_messaging.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ne')],
        path:
            'assets/translations', // <-- change the path of the translation files
        fallbackLocale: const Locale('en'),
        assetLoader: const CodegenLoader(),
        child: const RentalApp()),
  );
}

class RentalApp extends StatefulWidget {
  const RentalApp({super.key});

  @override
  _RentalAppState createState() => _RentalAppState();
  static _RentalAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_RentalAppState>();
}

class _RentalAppState extends State<RentalApp> {
  // Locale _locale = Locale.fromSubtags('en');

  late String _token;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    registerNotifications();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'The Rental',
      onGenerateRoute: AppRoutes.generateRoute,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      home: LoginPage(),
    );
  }

/**
 * 
 * Firebase setup.
 */
  void registerNotifications() async {
    final messaging = FirebaseMessaging.instance;
    await Firebase.initializeApp();
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      await FirebaseMessaging.instance.getToken().then((token) => setState(() {
            _token = token!;
            print("Got token :--" + _token);
          }));
    }

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
      }
    });
  }

  Future _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    print("Handling a background message: ${message.messageId}");
  }
}
