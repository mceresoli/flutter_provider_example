import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_demo/providers/movie_providers.dart';
import 'package:provider_demo/routes/rutas.dart';


void main() => runApp(AppState());


class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider( create: (_) =>  MoviesProvider(),lazy: false,),
      ],
      child: MyApp(),
    );
  }
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: apRoutes,
      initialRoute: 'initialPage',
    );
  }
}

