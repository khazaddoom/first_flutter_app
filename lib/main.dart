import 'package:flutter/material.dart';
import './button.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
    const Home({Key? key}) : super(key: key);
    @override
    State<StatefulWidget> createState() {
      return _HomeState();
    }
}

class _HomeState extends State<Home> {
  var _stateValue = 0;
  void _onDecrementClick() {
    if (_stateValue > 0) {
      setState(() {
        _stateValue = _stateValue - 1;
      });
    }
  }
  void _onIncrementClick() {
    if (_stateValue < 10) {
      setState(() {
        _stateValue = _stateValue + 1;
      });
    } else {
      setState(() {
        _stateValue = 0;
      });
    }
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Homepage"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Row(children: [
          Column(children: [
            Button('Increment', Colors.green.shade700, _onIncrementClick)
          ],),
          Column(children:  [
            Padding(
              padding: const EdgeInsets.all(10), 
              child: Text(_stateValue.toString(), style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
                ),),
            )
          ]),
          Column(children:  [
            Button('Decrement', Colors.red.shade500, _onDecrementClick)
          ],),
        ],),)
      ),
    );
  }
}
