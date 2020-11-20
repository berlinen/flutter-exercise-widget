import 'package:flutter/material.dart';
import 'package:my_app_2/sample_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'flutter demo',
        theme: new ThemeData(
          primarySwatch: Colors.green,
        ),
        home: new MyHomePage(title: 'flutter demo home page')
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('You have pushed the button this many times:'),
            new Text(
              "$_counter",
              style: Theme.of(context).textTheme.headline4,
            ),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => (new SamplePage()),
                  ),
                );
              },
              child: new Text(
                "点击我跳转到Sample页面",
                style: new TextStyle(fontSize: 16.0, color: Colors.red),
              ),
            ),
            new RaisedButton(
              onPressed: _incrementCounter,
              child: new Text('increment'),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
