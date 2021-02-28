import 'package:flutter/material.dart';
import 'package:hopeitworks/screens/login_screen.dart';
import './screens/details_screen.dart';
import './screens/getting_started_screen.dart'; 
import './screens/login_screen.dart';
import './screens/signup_screen.dart'; 
import './screens/home_screen.dart';  
import './screens/article_screen.dart';
import './screens/recommendations.dart';
import './screens/full_report.dart';
import './screens/symptoms_screen.dart';
  

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: GettingStartedScreen(),
      //initialRoute: '/',
      routes: {
       // '/': (_) => HomeScreen(),
        ArticleScreen.routeName: (_) => ArticleScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        DetailsScreen.routeName: (_) => DetailsScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        SignupScreen.routeName: (ctx) => SignupScreen(),
        FullReportScreen.routeName: (_) => FullReportScreen(),
        RecommendationsScreen.routeName: (_) => RecommendationsScreen(),
        SymptomsScreen.routeName: (_) => SymptomsScreen(),
      },
    );
  }
}
