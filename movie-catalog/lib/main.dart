import 'package:flutter/material.dart';
import 'Movie/model.dart';
import 'Movie/components/cardList.view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Catalog',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Movie Catalog', ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Icon(Icons.access_alarms_rounded), label: 'cenas'),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarms_rounded), label: 'outras'),
          ]
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              MovieCardListView(title: 'Worst Movies',movies: [
                Movie(id: '1', title: 'Movie 1', coverUrl: 'https://picsum.photos/250?image=9'),
                Movie(id: '2', title: 'Movie 2', coverUrl: 'https://picsum.photos/250?image=9'),
                Movie(id: '2', title: 'Movie 3'),
                Movie(id: '2', title: 'Movie 4'),
              ]),
              MovieCardListView(title: 'Movies',movies: [
                Movie(id: '1', title: 'Movie 1'),
                Movie(id: '1', title: 'Movie 2'),
              ]),
              MovieCardListView(title: 'Series',movies: [
                Movie(id: '1', title: 'Movie 1'),
              ]),
              MovieCardListView(title: 'Best Movies',movies: [
                Movie(id: '1', title: 'Movie 1'),
                Movie(id: '1', title: 'Movie 2'),
                Movie(id: '1', title: 'Movie 3'),
              ]),
              MovieCardListView(title: 'Best Movies',movies: [
                Movie(id: '1', title: 'Movie 1'),
              ]),
              MovieCardListView(title: 'Best Movies',movies: [
                Movie(id: '1', title: 'Movie 1'),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
