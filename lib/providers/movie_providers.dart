import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:provider_demo/models/movie.dart';
import 'package:provider_demo/models/now_playing_response.dart';

class MoviesProvider extends ChangeNotifier{

    String _apiKey   = 'bd169f6ff49039899ad041e01a564010';
    String _baseUrl  = 'api.themoviedb.org';
    String _lenguaje = 'es-ES';

    List<Movie> onDisplayMOvies = [];

    MoviesProvider(){
      getOnDisplayMovies();
    }


    getOnDisplayMovies()async {

      var url = Uri.https(_baseUrl, '/3/movie/now_playing', {
        'api_key'   : _apiKey,
        'lenguaje' : _lenguaje,
        'page'     : '1'
        }
        );

      var response = await http.get(url);
      NowPlayingResponse resp = NowPlayingResponse.fromJson(response.body);
      onDisplayMOvies = (resp.results);
      notifyListeners();

    }
}