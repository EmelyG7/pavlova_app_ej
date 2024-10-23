import 'package:flutter/material.dart';

void main() {
  runApp(StrawberryPavlova());
}

class StrawberryPavlova extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Strawberry Pavlova Recipe'),
        ),
        body: PavlovaScreen(),
      ),
    );
  }
}

class PavlovaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Strawberry Pavlova',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
                      'Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.red),
                    Icon(Icons.star, color: Colors.red),
                    Icon(Icons.star, color: Colors.red),
                    Icon(Icons.star, color: Colors.red),
                    Icon(Icons.star, color: Colors.red),
                    SizedBox(width: 8),
                    Text(
                      '170 Reviews',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Columna 1 (Prep)
                    Column(
                      children: [
                        Icon(Icons.kitchen, color: Colors.greenAccent),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text('Prep:'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('25 min'),
                          ],
                        ),
                      ],
                    ),
                    // Columna 2 (Cook)
                    Column(
                      children: [
                        Icon(Icons.timer_outlined, color: Colors.greenAccent),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text('Cook:'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('1 hr'),
                          ],
                        ),
                      ],
                    ),
                    // Columna 3 (Feeds)
                    Column(
                      children: [
                        Icon(Icons.cake, color: Colors.greenAccent),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text('Feeds:'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('4-6'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            flex: 1,
            child: Image.asset(
              'assets/pavlovaStrawberry.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

