import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 120,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 6,
                    right: 5,
                  ),
                  child: IconButton(
                    iconSize: 30.0,
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 22.0),
                  child: Text(
                    'Pokedex',
                    style: TextStyle(
                      fontSize: 38.0,
                      fontFamily: 'Google',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
