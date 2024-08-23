import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';
import 'package:movies_app/widgets/movie_content.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Movie Details'),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/Image_dora.png"
                      ,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 200,
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Icon(
                        Icons.play_circle_fill,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Dora and the Lost City of Gold',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    '2019 PG · 1h 42m',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Movie_content(),
                Container(

                  color: AppColors.graylightColor,
                  child: Column(
                    children: [
                      Text("More like this",
                        style: Theme.of(context).textTheme.labelLarge,),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder:
                        (context,index){
                          return Container(
                            height: 150,
                            child: Column(
                              children: [
                                // Stack(children:[
                                //   Container(
                                //     height:80,
                                //     child: Image.asset("assets/images/Image.png",
                                //     height: double.infinity,
                                //     width: double.infinity,
                                //       fit: BoxFit.fill,
                                //     ),
                                //   ),
                                //   Positioned(
                                //     top: 0,
                                //     left:0,
                                //     child: Icon(Icons.bookmark,
                                //       color: AppColors.grayColor,
                                //       size: 40,),
                                //   ),
                                //   Positioned(
                                //       top: 7,
                                //       left: 9,
                                //       child: Icon(Icons.add,
                                //         color: AppColors.whiteColor,
                                //         size: 20,
                                //       ))
                                // ]),
                              ],
                            ),
                          );
                        }),
                      )

                    ],
                  ),

                ),
              ],
            ),


        ),
        );
  }
}
