import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quickride/intro/splashscreen/splash.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp();
  }
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "qCiaswm32ihwR9Kkm-9Y6itv_8",
          appId: "1:7252901:web:a011ec7bc42c",
          messagingSenderId: "quickride-9b",
          projectId: "flutter-firebase-a3bd"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuickRide',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
