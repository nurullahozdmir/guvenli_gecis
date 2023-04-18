import 'package:flutter/material.dart';
import 'package:guvenligecis/ui/Login.dart';
import 'package:flutter/material.dart';
import 'package:guvenligecis/ui/Anasayfa.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home: Login(),
        navigatorKey: AppNavigator.navigatorKey,

      /*
      initialRoute: '/login',
      routes: {
        '/':(context)=> loading(),
        '/login':(context)=> Login(),
        '/home':(context)=> haberler(),
    },
*/
    );
  }
}