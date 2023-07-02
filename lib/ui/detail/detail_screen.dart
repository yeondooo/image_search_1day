import 'package:flutter/material.dart';
import 'package:image_search_1day/data/model/photo.dart';

class DetailScreen extends StatelessWidget {
  final Photo photo;

  const DetailScreen({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('디테일 페이지'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: photo.id,
                child: Image.network(
                  photo.url,
                  fit: BoxFit.cover,
                ),
              ),
              Text('tags: ${photo.tags}'),
              Text('views: ${photo.views.toString()}'),
            ],
          ),
        ),
      ),
    );
  }
}
