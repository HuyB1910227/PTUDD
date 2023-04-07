import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hukotravel/ui/splash_screen.dart';
import 'package:provider/provider.dart';
import 'ui/main_screen.dart';
import 'ui/tours/tour_overview_screen.dart';
import 'ui/screens.dart';

Future<void> main() async {
  await dotenv.load();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthManager()
        ),
        ChangeNotifierProvider(
          create: (context) => ToursManager()
        ),
      ],
      child: Consumer<AuthManager>(
        builder: (ctx, authManager, child) {
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
          
          home: authManager.isAuth ? const MainScreen() : FutureBuilder(
            builder: (ctx, snapshot) {
              return snapshot.connectionState == ConnectionState.waiting ? const SplashScreen() : const AuthScreen();
            }),
          // const MainScreen(),
          routes: {
            TourOverviewScreen.routeName:
              (cxt) => const TourOverviewScreen(),
          },
          // onGenerateRoute: (settings) {
          //   if(settings.name == TourOverviewScreen.routeName) {
          //     return MaterialPageRoute(
          //       builder: (context) {
          //         return const TourOverviewScreen();
          //       }
          //     );
          //   }
          // },
        );
        },
        // child: 
      ),
    );
  }
}

