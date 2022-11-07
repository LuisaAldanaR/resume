import 'package:flutter/material.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            const SizedBox(
              height: 30,
            ),
            CircleAvatar(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/fotico.jpg',
                  height: 80
                ),
              ),
            ),
            const SizedBox(
              height: 10
            ),
            const Text('Luisa Aldana',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              
            ),
            const Text('Aprendiz SENA',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: 40,
            ),
            const Expanded(child:_Body()),  
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
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        )
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Aprendiz SENA en Análisis y Desarrollo de Software',
          style: TextStyle(
            letterSpacing: 2,
            ),
          ),

          SizedBox(
            height: 25,
          ),
          Text('Habilidades',
            style: TextStyle(fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}