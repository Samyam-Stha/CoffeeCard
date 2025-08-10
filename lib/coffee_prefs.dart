import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  void increaseStrength() {
    print('inc strength by 1');
  }

  void increaseSugar() {
    print('inc sugar by 1');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            const Text('3'),
            Image.asset(
              'assets/img/coffee_bean.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown[700],
                foregroundColor: Colors.white,
              ),
              onPressed: increaseStrength,
              child: const Text('+'),
            ),
          ],
        ),
        Row(
          children: [
            const Text('Sugar: '),
            const Text('3'),
            Image.asset(
              'assets/img/sugar_cube.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.brown[700],
              ),
              onPressed: increaseSugar,
              child: const Text('+'),
            ),
          ],
        ),
      ],
    );
  }
}
