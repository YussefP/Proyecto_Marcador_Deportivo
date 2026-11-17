import 'package:flutter/material.dart';
import 'themes/app_theme.dart';
import 'screens/scoreboard_screen.dart';

void main() {
  runApp(const MarcadorDeportivo());
}

class MarcadorDeportivo extends StatelessWidget {
  const MarcadorDeportivo({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marcador Deportivo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.tema,
      home: const ScoreboardScreen(),
    );
  }
}