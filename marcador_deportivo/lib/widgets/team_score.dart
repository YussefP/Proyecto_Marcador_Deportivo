import 'package:flutter/material.dart';

class TeamScoreColumn extends StatelessWidget {

  final String nombreEquipo;
  final int puntuacion;
  final Color colorEquipo;
  final VoidCallback incremento;
  final VoidCallback decremento;

  const TeamScoreColumn({

    Key? key, 
    required this.nombreEquipo, 
    required this.puntuacion, 
    required this.colorEquipo, 
    required this.incremento, 
    required this.decremento,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          nombreEquipo,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: colorEquipo,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          '$puntuacion',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 72,
            fontWeight: FontWeight.w900,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: decremento,
              style: ElevatedButton.styleFrom(
                backgroundColor: colorEquipo,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(16),
              ),
              child: const Icon(Icons.remove, color: Colors.white),
            ),
            const SizedBox(width: 16),
            ElevatedButton(
              onPressed: incremento,
              style: ElevatedButton.styleFrom(
                backgroundColor: colorEquipo,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(16),
              ),
              child: const Icon(Icons.add, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}