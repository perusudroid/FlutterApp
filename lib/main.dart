import 'package:flutter/material.dart';

void main() => runApp(new MyApp());



class MyApp extends StatelessWidget {

  double billAmt = 0.0;
  double tipsAmt = 0.0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MyDroidS',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomeAppPage(),
    );
  }
}


class MyHomeAppPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _MyHomeAppPageState();

}

class _MyHomeAppPageState extends State<MyHomeAppPage>{

  bool toggle = true;

  void _toggle(){
    setState((){
      toggle = !toggle;
    });
  }

  _getToggleChild(){
    if(toggle){
      return Text('Toggle One');
    }else{
      return Text('Toggle two');
      //return MaterialButton(onPressed: () {}, child : Text("Toggle Two"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyDroid"),
      ),
      body: Center(
        child: _getToggleChild(),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _toggle,
          tooltip: 'Updated Text',
        child: Icon(Icons.update),
      ),
    );
  }

}
