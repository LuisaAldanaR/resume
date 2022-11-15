import 'package:flutter/material.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent.shade400,
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 30,
            ),
            CircleAvatar(
              radius: 30,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset('assets/foto.jpg'),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Luisa Aldana',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Aprendiz SENA',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            const Expanded(child: _Body()),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Soy aprendiz SENA de Análisis y Desarrollo de Software del Centro de Comercios Y Servicios que busca aprender y mejorar mis habilidades.',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                wordSpacing: 3,
                height: 1.7
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Habilidades',
            style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w900
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              getSkill(
                  const AssetImage('assets/java.png'), 'Java',
                  Colors.yellow.shade200),
              getSkill(
                  const AssetImage('assets/python.png'), 'Python',
                  Colors.cyan.shade100),
              getSkill(
                  const AssetImage('assets/github.png'), 'GitHub',
                  Colors.green.shade100),
              getSkill(
                  const AssetImage('assets/flutter.png'), 'Flutter',
                  Colors.pink.shade100)
            ],
          ),
        ],
      ),
    );
  }

  Column getSkill(AssetImage logo, String name, Color color) {
    return Column(children: [
      Container(
        height: 65.0,
        width: 65.0,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(7.0),
          ),
          child: Container(
          margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: logo)),
        ),
      ),
      Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ))
    ]);
  }
}
