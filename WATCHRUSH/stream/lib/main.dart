import 'package:flutter/material.dart';

class Movie {
  final String title;
  final String imageUrl;
  final String description;

  const Movie({
    required this.title,
    required this.imageUrl,
    required this.description,
  });
}

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('WatchRush'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 22, 18, 37),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Trending Now',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
  height: 200.0,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 5,
    itemBuilder: (BuildContext context, int index) {
      List<String> coverImages = [
        'https://m.media-amazon.com/images/M/MV5BOGI4YTI5ZDQtNjY4Ny00YTg3LTkwNDUtOGJjMjIxZDU3MzZiXkEyXkFqcGdeQXVyNzc3NzAwMzc@._V1_.jpg',
        'https://m.media-amazon.com/images/M/MV5BMDExZGMyOTMtMDgyYi00NGIwLWJhMTEtOTdkZGFjNmZiMTEwXkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_.jpg',
        'https://static.metacritic.com/images/products/movies/9/87cafaef5b310285c38bbf8d9c3131ea.jpg',
        'https://m.media-amazon.com/images/M/MV5BNzJlM2NmZTItOGQyYS00MmE2LTkwZGUtNDFkNmJmZjRjZjcxXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg',
        'https://m.media-amazon.com/images/M/MV5BNDNiYWM0ODgtYWQ4MC00YzJmLWE3OWItOTJmMTQ4MzNkNzM4XkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg',
      ];
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 150.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(coverImages[index]),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text(
              'Watch Now!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
    },
  ),
),
              Expanded(
                child: ListView(
                  children: [
                    MovieCard(
                      movie: Movie(
                        title: 'The Super Mario Bros.',
                        imageUrl: 'https://m.media-amazon.com/images/M/MV5BOTJhNzlmNzctNTU5Yy00N2YwLThhMjQtZDM0YjEzN2Y0ZjNhXkEyXkFqcGdeQXVyMTEwMTQ4MzU5._V1_QL75_UY281_CR0,0,190,281_.jpg',
                        description:
                            'The film features an origin story for the brothers Mario and Luigi, two Italian-American plumbers who are transported to an alternate world and become entangled in a battle between the Mushroom Kingdom, led by Princess Peach, and the Koopas, led by Bowser.',
                      ),
                    ),
                    MovieCard(
                      movie: Movie(
                        title: 'The Godfather',
                        imageUrl: 'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg',
                        description:
                            'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
                      ),
                    ),
                    MovieCard(
                      movie: Movie(
                        title: 'The Marvels',
                        imageUrl: 'https://bleedingcool.com/wp-content/uploads/2023/02/FpLwbZoaAAEdKev-900x900.jpg',
                        description:
                            'Carol Danvers gets her powers entangled with those of Kamala Khan and Monica Rambeau, forcing them to work together to save the universe',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Container(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                  SizedBox(width: 48.0),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color.fromARGB(255, 22, 18, 37),
            child: const Icon(Icons.add),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        ),
      ),
    );

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal:16.0),
      child: Container(
      height: 200.0,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
  BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 2,
      blurRadius: 5,
      offset: const Offset(0, 3),
    ),
  ],
),
  child: Row(
    children: [
      Expanded(
        child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          bottomLeft: Radius.circular(10.0),),
        image: DecorationImage(
        image: NetworkImage(movie.imageUrl),
        fit: BoxFit.cover,
        ),
      ),
    ),
  ),
  Expanded(
    child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),),
            color: Colors.white,),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movie.title,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      SizedBox(height: 10.0),
                      Expanded(
                        child: Text(
                        movie.description,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 6,
                        style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[700],
                        ),
                      ),
                    ),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 255, 12, 89),
                    ),
                      ),
                        child: Text('Watch Now'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}