import 'package:flutter/material.dart';
import 'main.dart';

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.grey),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => home()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("assets/okta.jpg"),
            ),
            const SizedBox(height: 10),
            const Text(
              'Okta Haris',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 26, 33, 48),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 26, 33, 48),
                // ini hitam
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(90, 50, 50, 50),
                    blurRadius: 4,
                    offset: Offset(3, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'About',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Im a student at SMK Wikrama Bogor, specializing in Frontend and Web Development. I work with JavaScript, PHP, Vue.js, React.js, Next.js, and Laravel, with experience in building user-friendly web projects.',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    offset: Offset(0, 4),
                    spreadRadius: 1,
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'History',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '2021 - Current\n'
                    'SMK Wikrama Student\n\n'
                    '2019 - 2021\n'
                    'SMP Negeri 1 Cigombong\n\n'
                    '2013 - 2019\n'
                    'SD Negeri Srogol 02',
                    style: TextStyle(
                      fontSize: 16, // Ukuran font, bisa disesuaikan
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'In 2021, I focused on designing web and app interfaces. In 2022, I worked as a web app developer. Currently, in 2023, I am building apps.',
                    style: TextStyle(
                      fontSize: 16, // Ukuran font, bisa disesuaikan
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 26, 33, 48),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(90, 50, 50, 50),
                    blurRadius: 4,
                    offset: Offset(3, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Skill',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  skillCard('HTML', 0.9),
                  const SizedBox(height: 20),
                  skillCard('CSS', 0.8),
                  const SizedBox(height: 20),
                  skillCard('JavaScript', 0.85),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget for skill card with white background
  Widget skillCard(String skill, double level) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white, // White background for each skill
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: Offset(0, 4),
            spreadRadius: 1,
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            skill,
            style: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(150, 0, 0, 0),
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 5),
          LinearProgressIndicator(
            value: level,
            backgroundColor: Colors.grey[300],
            color: const Color.fromARGB(255, 26, 33, 48),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: page2(),
  ));
}
