import 'package:flutter/material.dart';

class PokeItemTypeWidget extends StatelessWidget {
  final List<String>? types;

  const PokeItemTypeWidget({
    super.key,
    required this.types,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> typeList = [];
    for (var name in types!) {
      typeList.add(
        Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(80, 72, 70, 70),
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  name.trim(),
                  style: const TextStyle(
                    fontFamily: 'Google',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: typeList,
    );
  }
}
