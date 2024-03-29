import 'package:favouriteplace_app/screens/place_detail.dart';
import 'package:flutter/material.dart';

import '../models/place.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});
  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
          child: Text(
        'Got no places yet, start adding some!',
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: Theme.of(context).colorScheme.onBackground),
      ));
    } else {
      return ListView.builder(
        itemCount: places.length,
        itemBuilder: (ctx, index) => ListTile(
          leading: CircleAvatar(
            radius: 26,
            backgroundImage: FileImage(places[index].image),
          ),
          title: Text(
            places[index].title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => PlaceDetailScreen(place: places[index])));
          },
        ),
      );
    }
  }
}
