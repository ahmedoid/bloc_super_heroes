import 'package:flutter/material.dart';

class SuperHeroError extends StatelessWidget {
  const SuperHeroError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('🦹', style: TextStyle(fontSize: 55)),
        Text(
          'Error Loading',
          style: theme.textTheme.headline5,
        ),
      ],
    );
  }
}
