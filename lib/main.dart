import 'package:flutter/material.dart';

void main() => runApp(new Statefulnya());

class Statefulnya extends StatefulWidget {
  Statefulnya({Key key}) : super(key: key);

  _Statenya createState() => new _Statenya();
}

class _Statenya extends State<Statefulnya> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Create Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Create Data Example'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  controller: _controller,
                  decoration: InputDecoration(hintText: 'Enter Title'),
                  onChanged: (value) {
                    var intStr = int.parse(value);

                    for (int i=0; i<intStr; i++) {
                      if (i % 3 == 0) {
                        print('Fizz ');
//                        print('Fizz = $intStr');
                      } else if (i % 5 == 0) {
                        print('Buzz ');
                      } else if (i % 3 == 0 && i % 5 == 0) {
                        print('FizzBuzz ');
                      } else {
                        print('$i ');
                      }
                    }
                  }),
              ElevatedButton(
                child: Text('Create Data'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text(_controller.text),
                      );
                    },
                  );
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
