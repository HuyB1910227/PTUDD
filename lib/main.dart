import 'package:flutter/material.dart';
import 'ui/main_screen.dart';
import 'ui/tours/tour_overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'HuKoTravel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
        ).copyWith(
          secondary: Colors.deepOrange,
        )
      ),
      home: const MainScreen(),
      onGenerateRoute: (settings) {
        if(settings.name == TourOverviewScreen.routeName) {
          return MaterialPageRoute(
            builder: (ctx) {
              return const TourOverviewScreen();
            }
          );
        }
      },
    );
  }
}

