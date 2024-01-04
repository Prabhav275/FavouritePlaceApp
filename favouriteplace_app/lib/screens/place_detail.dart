import 'package:flutter/material.dart';

import '../models/place.dart';
class PlaceDetailScreen extends StatelessWidget{
  const PlaceDetailScreen({super.key, required this.place});
  final Place place;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: Stack(
        children: [
          Hero(
            tag: place.id,
            child: Image.file(
              place.image,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              color: Colors.black54,
              child: Text(
                place.title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white),
                softWrap: true,
                overflow: TextOverflow.fade,
              ),
            ),
          ),
        ],
      ),
  );
  }
}