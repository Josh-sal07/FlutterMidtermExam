import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> items = [
    'ALMARCO',
    'JOSEPHENA',
    'JOSELITO',
    'MARTINA',
    'DIMPLE',
    'JOSHUA',
    'LIDA',
    'ARNULFO',
    'AXCEL',
    'JACOB'
  ];

  final List<bool> addedStatus = List.generate(10, (_) => false);

  void showDetails(int index) {
    print('tawo ni ${items[index]}');
  }

  void toggleAdd(int index) {
    setState(() {
      addedStatus[index] = !addedStatus[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('JOSHUA SALABE MidtermExam')),
      body: Expanded(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              color: addedStatus[index]
                  ? const Color.fromARGB(255, 222, 250, 222)
                  : Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(items[index]),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () => showDetails(index),
                          child: Text('Details'),
                        ),
                        ElevatedButton(
                          onPressed: () => toggleAdd(index),
                          child: Text(addedStatus[index] ? 'Added' : 'Add'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
