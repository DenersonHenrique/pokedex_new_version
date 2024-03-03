import 'package:flutter/material.dart';

import '../../../../commons/extensions/build_context_extension.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
        height: context.fractionallyScreenHeight(0.15),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: context.mediaQuery.size.height * 0.02,
                    right: context.mediaQuery.size.width * 0.05,
                  ),
                  child: IconButton(
                    iconSize: 30.0,
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: context.mediaQuery.size.width * 0.05,
                  ),
                  child: const Text(
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
