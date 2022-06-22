import 'package:flutter/material.dart';

class PageContact extends StatelessWidget {
  const PageContact({Key? key, required this.movie, required this.movie}) : super(key: key);
  final Map<String, dynamic> movie;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text(movie['name']),
        ),
        body: SingleChildScrollView(
            child: Container(
                width: _size.width,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 10, right: 10, bottom: 20),
                  child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            width: _size.width / 3,
                            height: _size.width / 3,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(movie['picture']),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Center(
                              child: Text(movie['name'],
                                  style: TextStyle(fontSize: 30))),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Divider(),
                            Text('Téléphone',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(movie['phone'],
                                  style: TextStyle(fontSize: 18)),
                            ),
                            Divider(),
                          ],
                        )
                      ]),
                ))));
  }
}
