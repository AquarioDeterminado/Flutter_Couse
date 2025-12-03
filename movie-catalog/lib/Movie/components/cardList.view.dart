import 'package:flutter/material.dart';
import 'package:movie_catalog/Movie/model.dart';
import 'package:movie_catalog/Movie/components/card.view.dart';

class MovieCardListView extends StatelessWidget {
  final List<Movie> movies;
  final String title;

  MovieCardListView({required this.movies, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Text('view all...', style: TextStyle(fontSize: 10)),
            ],
          ),
      
          Container(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return MovieCardView(movie: movies[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}