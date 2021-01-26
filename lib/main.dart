import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nbase/services/auth_service.dart';
import 'package:provider/provider.dart';

import 'pages/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider(create: (_) => AuthService().user),
      ],
      child: MaterialApp(
        title: 'N-BASE',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          canvasColor: Colors.transparent,
          primarySwatch: Colors.blue,
          fontFamily: "Montserrat",
        ),
        home: Splash(),
      ),
    );
  }
}
