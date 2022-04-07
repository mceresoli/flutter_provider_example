
import 'package:flutter/cupertino.dart';
import 'package:provider_demo/pages/initial_page.dart';
import 'package:provider_demo/pages/mostrar_peliculas_page.dart';

final Map<String, Widget Function(BuildContext)> apRoutes = {
  'initialPage'           : (_)=>InitialPage(),
  'mostrarPeliculasPage'  : (_)=>MostrarPeliculasPage(),  
};
