import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var favoriteItems = appState.favorites;

    return Container(
      margin: const EdgeInsets.only(top: 25.0),
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          for (var i = 0; i < favoriteItems.length; i++)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(favoriteItems.elementAt(i).toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, wordSpacing: 50.0)),
                ],
              ),
            )
        ],
      ),
    );
  }
}
