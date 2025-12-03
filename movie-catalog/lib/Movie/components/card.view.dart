import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:movie_catalog/Movie/model.dart';

class MovieCardView extends StatelessWidget {
  final Movie movie;

  MovieCardView({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 225,
      margin: EdgeInsets.all(8.0),
      child: Expanded(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: movie.coverUrl != null? Image.network(movie.coverUrl as String) : Placeholder()
              ),
              Positioned(
                bottom: 0,
                width: 150, 
                height: 60,
                child:  Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      child: ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                          child: Container(
                            color: Colors.black.withAlpha(30),
                          )
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: -25,
                      child: IconButton(onPressed: () {}, icon: Icon(Icons.play_circle_filled), color: Colors.blue)
                    ),

                  ]
                )
              ),
              Positioned(
                left: 10,
                bottom: 10,
                child: Column(spacing: 5, crossAxisAlignment: CrossAxisAlignment.start,children: [
                    Text(movie.title),
                    Text(movie.id, style: TextStyle(fontSize: 10),)
                ])
              ),
            ]
          ) 
        ),
      ),
    );
  }
  
}