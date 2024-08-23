import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';

class TopRatedSlider extends StatelessWidget {
  String label;
  String movieName;
  String realse;
  String image;
  String rated;

  TopRatedSlider(
      {super.key,
      required this.label,
      required this.movieName,
      required this.realse,
      required this.rated,
      required this.image});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: height*0.03,
        ),
        SizedBox(
          height: height * 0.37,
          child: Container(
            color: AppColors.graylightColor,
            child: Padding(
              padding: EdgeInsets.all(height*0.010),
              child: Stack(
                children: [
                  Text(
                    label,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height*0.03),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: 20,
                      itemBuilder: (contex, Index) {
                        return Padding(
                          padding: EdgeInsets.all(height*0.010),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        Container(
                                          color: Colors.white,
                                          height:
                                              height *
                                                  0.24,
                                          width:
                                              width *
                                                  0.35,
                                          child: Image.asset(
                                            image,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Image.asset("assets/images/bookmark.png",
                                            color: AppColors.grayColor),
                                        const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                   SizedBox(height: height*0.009),
                                  Row(
                                    children: [
                                      Image.asset("assets/images/star.png"),
                                      SizedBox(
                                        width: width*0.005,
                                      ),
                                      Text(
                                        rated,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w100),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    movieName,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w100),
                                  ),
                                  Text(
                                    realse,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(fontSize: 12)),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
