import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        
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
