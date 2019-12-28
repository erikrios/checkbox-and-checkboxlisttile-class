import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Demo Flutter',
        theme: ThemeData(primarySwatch: Colors.brown),
        home: CheckboxListTileHomePage(),
      );
}

/*
 * This class is used for the example of checkbox
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

/*
This class is used for the example of checkbox to activate or deactivate the textfield
 */
class CheckboxTextFieldHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CheckboxTextFieldHomePageState();
}

class _CheckboxTextFieldHomePageState extends State<CheckboxTextFieldHomePage> {
  bool selected = false;

  void onTextFieldChanged(String value) {
    setState(() {
      print(value);
    });
  }

  void onCheckboxChanged(bool value) {
    setState(() {
      this.selected = value;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Demo Checkbox TextField'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                enabled: !this.selected,
                onChanged: (String value) {
                  onTextFieldChanged(value);
                },
                decoration: InputDecoration(
                    hintText: 'Ketik teks disini',
                    hintStyle: TextStyle(fontStyle: FontStyle.normal)),
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: this.selected,
                    onChanged: (bool value) {
                      onCheckboxChanged(value);
                    },
                  ),
                  Text('Disable input box')
                ],
              )
            ],
          ),
        ),
      );
}

/*
 *This class is used for the example of checkboxlisttile
 */
class CheckboxListTileHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CheckboxListTileHomePageState();
}

class _CheckboxListTileHomePageState extends State<CheckboxListTileHomePage> {
  final List<String> bahasa = ['Java', 'Kotlin', 'Dart'];
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
          title: Text('Demo CheckboxListTile'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Text('Bahasa yang disukai:'),
              CheckboxListTile(
                value: this.selectedOne,
                onChanged: (bool value) {
                  onChangedOne(value);
                },
                title: Text(this.bahasa[0]),
                activeColor: Colors.red,
                secondary: Icon(Icons.language),
              ),
              CheckboxListTile(
                value: this.selectedTwo,
                onChanged: (bool value) {
                  onChangedTwo(value);
                },
                title: Text(this.bahasa[1]),
                activeColor: Colors.red,
                secondary: Icon(Icons.language),
              ),
              CheckboxListTile(
                value: this.selectedThree,
                onChanged: (bool value) {
                  onChangedThree(value);
                },
                title: Text(this.bahasa[2]),
                activeColor: Colors.red,
                secondary: Icon(Icons.language),
              )
            ],
          ),
        ),
      );
}
