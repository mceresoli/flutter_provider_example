
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ProviderDemo'),centerTitle: true,),
      body: Center(child: 
              Container(child: 
                    ElevatedButton(
                      child: Text('Buscar Peliculas'),
                      onPressed: () { Navigator.pushNamed(context, 'mostrarPeliculasPage'); },
                     ),
              ),
      ),
    );
  }
}