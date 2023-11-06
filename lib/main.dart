import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int imageIndex = 1;

  void changeImage() {
    setState(() {
      imageIndex = (imageIndex % 5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    String imagePath = 'assets/sky$imageIndex.jpg';

    return Scaffold(
      appBar: AppBar(
        title: Text('My APP'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Image.asset(imagePath),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeImage,
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}