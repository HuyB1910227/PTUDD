import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hukotravel/ui/home/favorite_tours_screen.dart';
import 'package:hukotravel/ui/order/order_tour.dart';
import 'package:hukotravel/ui/profile/about.dart';
import 'package:hukotravel/ui/profile/question.dart';
import 'package:hukotravel/ui/splash_screen.dart';
import 'package:hukotravel/ui/tours/tour_detail_screen.dart';
import 'package:provider/provider.dart';
import 'ui/main_screen.dart';
import 'ui/tours/tour_overview_screen.dart';
import 'ui/screens.dart';

Future<void> main() async {
  await dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthManager()),
        ChangeNotifierProxyProvider<AuthManager, ToursManager>(
          create: (context) => ToursManager(),
          update: (ctx, authManager, toursManager) {
            toursManager!.authToken = authManager.authToken;
            return toursManager;
          },
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
            About.routeName:
              (cxt) => const About(),
            Question.routeName:
              (cxt) => const Question(),
            FavoriteToursScreen.routeName:
              (ctx) => const FavoriteToursScreen(),
          },
          onGenerateRoute: (settings) {
            // if (settings.name == OrderTourScreen.routeName) {
            //     final tourId = settings.arguments as String;
            //     return MaterialPageRoute(
            //       builder: (ctx) {
            //         print(tourId);
            //         return OrderTourScreen(ctx.read<ToursManager>().findById(tourId));
            //       }
            //     );
            //   }
            //   return null;
          },
        );
        },
        // child:
      ),
    );
  }
}
