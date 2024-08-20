import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'asstes/image/Group 20.png',
            ),
            Text(
              'Dora and the Lost City of Gold',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              '2019 PG-13 2h 7m',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet - high school.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Text('7.7'),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'More Like This',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildMovieCard('Deadpool 2', '2018 R 1h 59m', '7.7'),
                _buildMovieCard('Deadpool 2', '2018 R 1h 59m', '7.7'),
                _buildMovieCard('Deadpool 2', '2018 R 1h 59m', '7.7'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMovieCard(String title, String details, String rating) {
    return Column(
      children: [
        Image.asset(''),
        Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
        Text(
          details,
          style: TextStyle(fontSize: 12),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star),
            Text(rating),
          ],
        ),
      ],
    );
  }
}
