import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/models/movie.dart';
import 'package:provider_demo/providers/movie_providers.dart';

class MostrarPeliculasPage extends StatelessWidget {

 @override
  Widget build(BuildContext context) {

    final movieProvider = Provider.of<MoviesProvider>(context);
    List<Movie> pelis = movieProvider.onDisplayMOvies;

    return Scaffold(
      appBar: AppBar(
            title: Text('Mostrar peliculas de TheMovieDB'),
            ),
      body: Center(
            child: Container(
              child: movieList(pelis)
              ),
            ),
      );
  }

 ListView movieList(List<Movie> pelis) {
   return ListView.builder(
                itemCount: pelis.length ,
                itemBuilder: ( context, i) =>  movieTile(pelis[i])
              );
 }

 ListTile movieTile(Movie movie){
        return ListTile(
          title: Text(movie.title),
          subtitle: Text('Popularidad: '+movie.popularity.toString()),
          );

 }

}