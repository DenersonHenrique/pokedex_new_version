import 'package:flutter/material.dart';

import '../../../../commons/extensions/build_context_extension.dart';

class HomeAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) => AppBar(
        toolbarHeight: context.mediaQuery.padding.top,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        actions: <Widget>[
          IconButton(
            iconSize: 30.0,
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
        title: const Text(
          'Pokédex',
          style: TextStyle(
            fontSize: 38.0,
            fontFamily: 'Google',
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
