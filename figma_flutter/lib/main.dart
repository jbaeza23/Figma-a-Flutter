import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BotonPersonalizado(
                texto: 'Click Me',
                onPressed: null,
              ),
              SizedBox(height: 16),
              BotonPersonalizadoInverso(
                texto: 'Click Me',
                onPressed: null,
              ),
              SizedBox(height: 32),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BotonCircular(color: Color(0xFF3333FF)),
                  SizedBox(width: 16),
                  BotonCircular(color: Color(0xFFFFFFFF)),
                  SizedBox(width: 16),
                  BotonCircular(color: Color(0xFF000000)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BotonPersonalizado extends StatelessWidget {
  final String texto;
  final VoidCallback? onPressed;

  const BotonPersonalizado({
    super.key,
    required this.texto,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF3333FF),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.2),
              offset: const Offset(0, 4),
              blurRadius: 6,
            ),
          ],
        ),
        child: Text(
          texto,
          style: const TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class BotonPersonalizadoInverso extends StatelessWidget {
  final String texto;
  final VoidCallback? onPressed;

  const BotonPersonalizadoInverso({
    super.key,
    required this.texto,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFF3333FF), width: 2),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.2),
              offset: const Offset(0, 4),
              blurRadius: 6,
            ),
          ],
        ),
        child: Text(
          texto,
          style: const TextStyle(
            color: Color(0xFF3333FF),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class BotonCircular extends StatelessWidget {
  final Color color;

  const BotonCircular({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.2),
            offset: const Offset(0, 4),
            blurRadius: 6,
          ),
        ],
      ),
    );
  }
}
