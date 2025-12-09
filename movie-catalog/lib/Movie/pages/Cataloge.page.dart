

class MovieCatalogePage extends StatelessWidget {
  const MovieeCatalogePage({super.key});

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
                Movie(id: '1', title: 'Movie 1 aaaaaaaaaaaaaaaaaaaaaa', coverUrl: 'https://www.movieposters.com/cdn/shop/products/e847068834dce8b78050a8a63afe3376_e4056ee3-8587-4d11-a980-ce251d594e23.jpg?v=1762963189&width=1680'),
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