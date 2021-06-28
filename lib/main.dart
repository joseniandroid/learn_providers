import 'package:flutter/material.dart';
import 'package:learn_providers/widgets/fav_fruit_text.dart';
import 'package:provider/provider.dart';

import 'providers/favorites.dart';
import 'widgets/fruit_button.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (_) => Favorites(),
        child: const MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'My favorite fruit is ' + Provider.of<Favorites>(context).fruit),
        ),
        body: Center(
          child: Column(
            children: const [
              FruitButton('Apples'),
              FruitButton('Bananas'),
              FruitButton('Oranges'),
              FavFruitText(),
            ],
          ),
        ),
      ),
    );
  }
}
