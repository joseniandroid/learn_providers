import 'package:flutter/material.dart';
import 'package:learn_providers/providers/favorites.dart';
import 'package:provider/provider.dart';

class FruitButton extends StatelessWidget {
  final String fruit;
  const FruitButton(this.fruit, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Provider.of<Favorites>(context, listen: false).changeFruit(fruit);
      },
      child: Text(fruit),
    );
  }
}
