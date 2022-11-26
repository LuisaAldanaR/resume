import 'package:flutter/material.dart';

class ExperiencieWidget extends StatelessWidget {
  final String dateExperience;
  final String workPosition;
  final String logoCompany;
  final String nameCompany;
  const ExperiencieWidget(
      {super.key,
      required this.dateExperience,
      required this.workPosition,
      required this.logoCompany,
      required this.nameCompany});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          dateExperience,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 65,
          width: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.grey.shade200,
          ),
          child: Padding(
            padding: const EdgeInsets.all(17),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(workPosition,
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.bold)),
              Text(nameCompany,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.normal)),
            ]),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(logoCompany),
            width: 38,
            height: 38,
          ),
        )
      ],
    );
  }
}
