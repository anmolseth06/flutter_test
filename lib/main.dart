import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  TextEditingController _controller = TextEditingController();
  final List<String> _list = [];
  var emptyString = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: <Widget>[
              TextField(
                key: ValueKey("write_data"),
                controller: _controller,
              ),
              FlatButton(
                key: ValueKey("add_data"),
                color: Colors.cyan,
                child: Text(
                  "Add",
                ),
                onPressed: () {
                  setState(() {
                    _list.add(_controller.text);
                    _controller.text = emptyString;
                  });
                },
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Text(
                      _list[index],

                    );
                  },
                  itemCount: _list.length,
                ),
              )
            ],
          )),
    );
  }
}
