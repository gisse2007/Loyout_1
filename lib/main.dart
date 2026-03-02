import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset(
              'assets/image1.jpg',
              width: 100,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Mi vecino Totoro',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Pelicula, Studio Giblin',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.star, color: Colors.amberAccent),
                      Text('100'),
                    ],
                  ),

                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Column(
                        children: [
                          Icon(Icons.save, color: Colors.blue),
                          Text('SAVE'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.download, color: Colors.blue),
                          Text('DOWNLOAD'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.share, color: Colors.blue),
                          Text('SHARE'),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  Text(
                    'Mi vecino Totoro" (1988), dirigida por Hayao Miyazaki, sigue a las hermanas Satsuki y Mei, quienes se mudan al campo con su padre para estar cerca de su madre enferma. Allí descubren criaturas mágicas, incluyendo a Totoro, un espíritu del bosque que las ayuda a sobrellevar la situación con aventuras fantásticas y conmovedoras',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
