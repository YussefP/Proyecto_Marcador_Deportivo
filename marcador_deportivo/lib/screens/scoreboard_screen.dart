import 'package:flutter/material.dart';
import '../themes/app_theme.dart';
import '../widgets/team_score.dart';

class ScoreboardScreen extends StatefulWidget {

  const ScoreboardScreen({Key? key}) : super(key: key);

  @override
  State<ScoreboardScreen> createState() => _ScoreboardScreenState();
}

class _ScoreboardScreenState extends State<ScoreboardScreen> {

  int _puntuacionLocal = 0;
  int _puntuacionVisitante = 0;

  void _incrementoPuntuacionLocal() {

    setState(() {
      _puntuacionLocal++;
    });
  }

  void _decrementoPuntuacionLocal() {

    if (_puntuacionLocal > 0) {

      setState(() {
        _puntuacionLocal--;
      });
    } 
  }

  void _incrementoPuntuacionVisitante() {

    setState(() {
      _puntuacionVisitante++;
    });
  }

  void _decrementoPuntuacionVisitante() {

    if (_puntuacionVisitante > 0) {

      setState(() {
        _puntuacionVisitante--;
      });
    } 
  }

  void _resetPuntuacion() {

    setState(() {
      _puntuacionLocal = 0;
      _puntuacionVisitante = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Marcador Deportivo'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TeamScoreColumn(
                      nombreEquipo: 'LOCAL',
                      puntuacion: _puntuacionLocal,
                      colorEquipo: AppTheme.local,
                      incremento: _incrementoPuntuacionLocal,
                      decremento: _decrementoPuntuacionLocal,
                      ),
                    ),
                    const VerticalDivider(thickness: 1, width: 1),
                    Expanded(
                    child: TeamScoreColumn(
                      nombreEquipo: 'VISITANTE',
                      puntuacion: _puntuacionVisitante,
                      colorEquipo: AppTheme.visitante,
                      incremento: _incrementoPuntuacionVisitante,
                      decremento: _decrementoPuntuacionVisitante,
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 22),
              child: ElevatedButton.icon(
                onPressed: _resetPuntuacion,
                icon: const Icon(Icons.refresh, color: Colors.white),
                label: const Text(
                  'REINICIAR MARCADOR',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.resetColor,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}