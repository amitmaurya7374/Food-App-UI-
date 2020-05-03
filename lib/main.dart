import 'package:flutter/material.dart';

import './screens/signin_screen.dart';
import './screens/signup_screen.dart';
import './screens/homepage_screen.dart';
import './screens/order_page.dart';
import './screens/payment_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>Signup(),
        '/signIn': (context) => SignInScreen(),
        '/profile':(context)=>HomePageScreen(),
        '/orderpage':(context)=>OrderPageScreen(),
        '/paymentpage':(context)=>PaymentScreen(),
      },
    );
  }
}
