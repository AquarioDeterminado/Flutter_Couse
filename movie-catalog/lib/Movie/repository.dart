import 'package:movie_catalog/movie/model.dart';

class MovieRepository {
  final List<Movie> movies;

  MovieRepository({required this.movies});

  void add(Movie movie) {
    movies.add(movie);
  }

  Movie? fetch(String id) {
    return movies.firstWhere((movie) => movie.id == id);
  }

  List<Movie> fetchAll() {
    return movies;
  }

  List<Movie> search(String title) {
    return movies
        .where((movie) => movie.title.toLowerCase().contains(title.toLowerCase())).toList();
  }
}