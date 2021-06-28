import 'package:flutter/material.dart';
import 'package:learn_providers/providers/favorites.dart';
import 'package:provider/provider.dart';

class FavFruitText extends StatelessWidget {
  const FavFruitText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Favorite Fruit: " + Provider.of<Favorites>(context).fruit,
      style: const TextStyle(
        fontSize: 32,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
