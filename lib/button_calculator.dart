import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonNumberCalculator extends StatelessWidget {
  String number = '';
  ButtonNumberCalculator({Key? key, required this.number}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return Container(
      // ignore: deprecated_member_use
      child: FlatButton(
        onPressed: null,
        child: Text(
          number,
          style: const TextStyle(fontSize: 40),
        ),
      ),
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      height: 50,
    );
  }
}

class OutputBar extends StatelessWidget {
  const OutputBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(5))),
    );
  }
}

// ignore: must_be_immutable
class ButtonOperatorCalculator extends StatelessWidget {
  String operator = '';
  ButtonOperatorCalculator({Key? key, required this.operator})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return Container(
      // ignore: deprecated_member_use
      child: FlatButton(
        onPressed: null,
        child: Text(
          operator,
          style: const TextStyle(fontSize: 40),
        ),
      ),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.yellow,
      ),
    );
  }
}
