import 'package:flutter/material.dart';

class SuperHeroesLoading extends StatelessWidget {
  const SuperHeroesLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('🦸‍', style: TextStyle(fontSize: 55)),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.red),
          ),
        ),
      ],
    );
  }
}
