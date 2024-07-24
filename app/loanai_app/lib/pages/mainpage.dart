import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('LoanAI'),
          actions: [
            IconButton(
              icon: Icon(Icons.info),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Feature Input Instructions'),
                      content: Text(
                          'Please enter values for the following features:\n\n'
                          '1. Feature 1\n'
                          '2. Feature 2\n'
                          '3. Feature 3\n'
                          '4. Feature 4\n'
                          '5. Feature 5\n'
                          '6. Feature 6\n'
                          '7. Feature 7\n'
                          '8. Feature 8\n'
                          '9. Feature 9\n'
                          '10. Feature 10\n'
                          '11. Feature 11\n'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
        body: Center(
          child: PredictionWidget(),
        ),
      ),
    );
  }
}

class PredictionWidget extends StatefulWidget {
  @override
  _PredictionWidgetState createState() => _PredictionWidgetState();
}

class _PredictionWidgetState extends State<PredictionWidget> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();
  final TextEditingController _controller5 = TextEditingController();
  final TextEditingController _controller6 = TextEditingController();
  final TextEditingController _controller7 = TextEditingController();
  final TextEditingController _controller8 = TextEditingController();
  final TextEditingController _controller9 = TextEditingController();
  final TextEditingController _controller10 = TextEditingController();
  final TextEditingController _controller11 = TextEditingController();
  String _prediction = '';

  Future<void> _getPrediction() async {
    try {
      List<double> features = [
        double.parse(_controller1.text),
        double.parse(_controller2.text),
        double.parse(_controller3.text),
        double.parse(_controller4.text),
        double.parse(_controller5.text),
        double.parse(_controller6.text),
        double.parse(_controller7.text),
        double.parse(_controller8.text),
        double.parse(_controller9.text),
        double.parse(_controller10.text),
        double.parse(_controller11.text),
      ];
       final response = await http.get(
        Uri.parse('http://localhost:5000/predict'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );


      if (response.statusCode == 200) {
        setState(() {
          _prediction = jsonDecode(response.body)['prediction'].toString();
        });
      } else {
        setState(() {
          _prediction = 'Error: ${response.reasonPhrase}';
        });
      }
    } catch (e) {
      setState(() {
        _prediction = 'Error: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: _controller1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter feature value 1',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: _controller2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter feature value 2',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: _controller3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter feature value 3',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: _controller4,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter feature value 4',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: _controller5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter feature value 5',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: _controller6,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter feature value 6',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: _controller7,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter feature value 7',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: _controller8,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter feature value 8',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: _controller9,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter feature value 9',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: _controller10,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter feature value 10',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: _controller11,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter feature value 11',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _getPrediction,
              child: Text('Predict'),
            ),
            SizedBox(height: 20),
            Text(
              'Prediction: $_prediction',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}