import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';
import 'package:movies_app/screens/SearchTap/models/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.843,
          height: MediaQuery.of(context).size.height * 0.12,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      'https://image.tmdb.org/t/p/w500${movie.imageUrl}',
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width * 0.33,
                      height: MediaQuery.of(context).size.height * 0.11,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movie.title,
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          movie.year,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          movie.actors,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        Divider(),
      ],
    );
  }
}
