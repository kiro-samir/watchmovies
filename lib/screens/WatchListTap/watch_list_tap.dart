import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';
import 'package:movies_app/screens/SearchTap/models/movie.dart';
import 'package:movies_app/widget/MovieCard.dart';

class WatchListTap extends StatefulWidget {
  @override
  State<WatchListTap> createState() => _WatchListTapState();
}

class _WatchListTapState extends State<WatchListTap> {
  List<Movie> movies = [
    Movie(
      title: 'The Shawshank Redemption',
      year: '1994',
      actors: 'Tim Robbins, Morgan Freeman',
      imageUrl: '/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg',
    ),
    Movie(
      title: 'The Godfather',
      year: '1972',
      actors: 'Marlon Brando, Al Pacino',
      imageUrl: '/rPdtLWNsZmAtoZl9PK7S2wE3qiS.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Watch List",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.height * 0.05,
            ),
            child: Stack(
              children: [
                MovieCard(movie: movies[index]),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.005,
                  left: MediaQuery.of(context).size.width * 0.001,
                  child: const ImageIcon(
                    AssetImage('assets/images/bookmark.png'),
                    color: AppColors.goldColor,
                    size: 35,
                  ),
                ),
                Positioned(
                  child: Icon(
                    Icons.check,
                    size: 18,
                    color: AppColors.whiteColor,
                  ),
                  top: MediaQuery.of(context).size.height * 0.010,
                  left: MediaQuery.of(context).size.width * 0.014,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}