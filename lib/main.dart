import 'package:flutter/material.dart';
import 'package:news_app/Providers/articles_provider.dart';
import 'package:news_app/Screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ArticlesProvider(),)
      ],
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
          title: 'News App',
          home: HomeScreen(),
        ),
    );
  }
}