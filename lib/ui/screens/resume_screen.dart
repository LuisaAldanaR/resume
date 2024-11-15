import 'package:flutter/material.dart';
import 'package:resume/widgets/experience_widget.dart';
import 'package:resume/widgets/skill_widget.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent.shade200,
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
              'Apprentice SENA',
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
  const _Body();

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
            'I am a SENA apprentice of Software Analysis and Development of the Center of Commerce and Services looking to learn and improve my skills.',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                wordSpacing: 3,
                height: 1.7),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Skills',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkillWidget(
                  logo: 'assets/java.png',
                  name: 'Java',
                  color: Colors.yellow.shade200),
              SkillWidget(
                  logo: 'assets/python.png',
                  name: 'Python',
                  color: Colors.cyan.shade100),
              SkillWidget(
                  logo: 'assets/github.png',
                  name: 'GitHub',
                  color: Colors.green.shade100),
              SkillWidget(
                  logo: 'assets/flutter.png',
                  name: 'Flutter',
                  color: Colors.pink.shade100)
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Experience',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 10,
          ),

          Column(
            children: const [
              ExperiencieWidget(
                dateExperience: "Dec 2019 - Present",
                workPosition: "UI Designer",
                logoCompany: "assets/snapchat.png",
                nameCompany: "Snap Inc",
              ),
              SizedBox(
                height: 20,
              ),
              ExperiencieWidget(
                dateExperience: "Jul 2019 - Dec 2019",
                workPosition: "UX Designer",
                logoCompany: "assets/molotov.png",
                nameCompany: "Molotov",
              ),
              SizedBox(
                height: 20,
              ),
              ExperiencieWidget(
                dateExperience: "Jan 2019 - Jul 2019",
                workPosition: "UI Designer",
                logoCompany: "assets/ouigo.jpg",
                nameCompany: "SNCF",
              )
            ],
          )
        ],
      ),
    );
  }
}
