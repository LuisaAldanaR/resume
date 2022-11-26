import 'package:flutter/material.dart';

class SkillWidget extends StatelessWidget {
  final String logo;
  final String name;
  final Color color;

  const SkillWidget({
    Key? key,
    required this.logo,
    required this.name,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 65.0,
        width: 65.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(7.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Image(image: AssetImage(logo)),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
      )
    ]);
  }
}
