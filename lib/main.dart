import 'package:find_my_doctor/providers/cart_provider.dart';
import 'package:find_my_doctor/screens/cart.dart';
import 'package:find_my_doctor/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/doctor_details_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: DoctorAppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/doctor_details': (context) => const DoctorDetailsScreen(),
        '/cart': (context) => const CartPage(),
      },
    );
  }
}
