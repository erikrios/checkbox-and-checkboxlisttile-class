import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Demo Flutter',
        theme: ThemeData(primarySwatch: Colors.brown),
        home: CheckboxHomePage(),
      );
}

/*
 * This class used for the example of checkbox
 */
class CheckboxHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CheckboxHomePageState();
}

class _CheckboxHomePageState extends State<CheckboxHomePage> {
  final List<String> bahasa = [
    'Java',
    'Kotlin',
    'Dart',
  ];
  bool selectedOne = false;
  bool selectedTwo = false;
  bool selectedThree = false;
  List<int> list = [];

  void onChangedOne(bool value) {
    setState(() {
      this.selectedOne = value;
    });
    if (value)
      list.add(0);
    else
      list.remove(0);
    print(list);
  }

  void onChangedTwo(bool value) {
    setState(() {
      this.selectedTwo = value;
    });
    if (value)
      list.add(1);
    else
      list.remove(1);
    print(list);
  }

  void onChangedThree(bool value) {
    setState(() {
      this.selectedThree = value;
    });
    if (value)
      list.add(2);
    else
      list.remove(2);
    print(list);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Demo Checkbox'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Text(
                'Bahasa yang disukai:',
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: this.selectedOne,
                    onChanged: (bool value) {
                      onChangedOne(value);
                    },
                  ),
                  Container(
                    width: 8.0,
                  ),
                  Text(this.bahasa[0])
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: this.selectedTwo,
                    onChanged: (bool value) {
                      onChangedTwo(value);
                    },
                  ),
                  Container(
                    width: 8.0,
                  ),
                  Text(this.bahasa[1])
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: this.selectedThree,
                    onChanged: (bool value) {
                      onChangedThree(value);
                    },
                  ),
                  Container(
                    width: 8.0,
                  ),
                  Text(this.bahasa[2])
                ],
              )
            ],
          ),
        ),
      );
}
