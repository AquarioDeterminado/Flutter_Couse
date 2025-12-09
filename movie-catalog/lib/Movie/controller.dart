import 'dart:convert';

import 'package:movie_catalog/Movie/model.dart';
import 'package:http/http.dart' as http;

class MovieController {
  Future<List<Movie>> getMovies() async {
    final response = await http.get(Uri.parse('https://ghibliapi.vercel.app/films'))

    final data = (JsonDecoder(response.body) as Map<String, dynamic>)['data'];

    (data as List).map((e) {
      final jsonMovie = (e as Map<String, dynamic>);

      return Movie(
        id: jsonMovie["mal_id"].toString(),
        title: jsonMovie["mal_id"].toString(),
        
      )
    });

    List<Movie> movies = List<Movie>.empty(growable: true);


    
    return 

  }

}