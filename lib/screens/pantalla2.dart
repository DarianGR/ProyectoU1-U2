import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favorites')),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: const Center(
                  child: Icon(Icons.playlist_add_circle, size: 50, color: Colors.black54),
                ),
              ),
            ),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 0,
              color: const Color(0xff6750a4),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
              ),
            ),
            Expanded(
              child: Container(
                child: const Center(
                  child: Icon(Icons.playlist_add_circle, size: 50, color: Colors.black54),
                ),
              ),
            ),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 0,
              color: const Color(0xff6750a4),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
              ),
            ),
            Expanded(
              child: Container(
                child: const Center(
                  child: Icon(Icons.playlist_add_circle, size: 50, color: Colors.black54),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
