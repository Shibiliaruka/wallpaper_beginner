import 'package:flutter/material.dart';

class Wallpaper extends StatefulWidget {
  @override
  _WallpaperState createState() => _WallpaperState();
}

class _WallpaperState extends State<Wallpaper> {
  List<String> values = [
    'assets/one.webp',
    'assets/three.webp',
    'assets/two.webp',
    'assets/one.webp',
    'assets/three.webp',
    'assets/two.webp',
    'assets/one.webp',
    'assets/three.webp',
    'assets/two.webp',
    'assets/one.webp',
    'assets/three.webp',
    'assets/two.webp',
    'assets/three.webp',
    'assets/two.webp',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Wallpaper'),),backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.deepOrangeAccent,
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            childAspectRatio: 0.5,



          ),

          itemCount: values.length,



          itemBuilder: (context, index) {
            return Card(
              elevation: 10,

              child: Center(
                child: Image.asset(values[index],),


              ),





            );
          },

          ),
    );
  }
}
