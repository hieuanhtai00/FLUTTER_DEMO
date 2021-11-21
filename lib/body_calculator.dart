import 'dart:ui';

import 'package:flutter/material.dart';

import 'button_calculator.dart';

ButtonNumberCalculator butc = ButtonNumberCalculator(number: 'C');
ButtonNumberCalculator but$ = ButtonNumberCalculator(number: '\$');
ButtonNumberCalculator butpercent = ButtonNumberCalculator(number: '%');
ButtonNumberCalculator but7 = ButtonNumberCalculator(number: '7');
ButtonNumberCalculator but8 = ButtonNumberCalculator(number: '8');
ButtonNumberCalculator but9 = ButtonNumberCalculator(number: '9');
ButtonNumberCalculator but4 = ButtonNumberCalculator(number: '4');
ButtonNumberCalculator but5 = ButtonNumberCalculator(number: '5');
ButtonNumberCalculator but6 = ButtonNumberCalculator(number: '6');
ButtonNumberCalculator but1 = ButtonNumberCalculator(number: '1');
ButtonNumberCalculator but2 = ButtonNumberCalculator(number: '2');
ButtonNumberCalculator but3 = ButtonNumberCalculator(number: '3');
ButtonNumberCalculator but0 = ButtonNumberCalculator(number: '0');
ButtonNumberCalculator butdot = ButtonNumberCalculator(number: '.');
ButtonOperatorCalculator butdiv = ButtonOperatorCalculator(operator: '/');
ButtonOperatorCalculator butsub = ButtonOperatorCalculator(operator: '-');
ButtonOperatorCalculator butsum = ButtonOperatorCalculator(operator: '+');
ButtonOperatorCalculator butmul = ButtonOperatorCalculator(operator: '*');
ButtonOperatorCalculator butequal = ButtonOperatorCalculator(operator: '=');

class ButtonInputBar extends StatelessWidget {
  const ButtonInputBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 8.0,
      children: [
        butc,
        but$,
        butpercent,
        butdiv,
        but7,
        but8,
        but9,
        butsub,
        but4,
        but5,
        but6,
        butsum,
        but1,
        but2,
        but3,
        butmul,
      ],
    );
  }
}

class BodyCalculator extends StatelessWidget {
  const BodyCalculator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Expanded(
            child: OutputBar(),
            flex: 8,
          ),
          const Expanded(
            child: ButtonInputBar(),
            flex: 24,
          ),
          Expanded(
            child: SizedBox(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 8.0,
                children: [
                  but0,
                  GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 8.0,
                    children: [
                      butdot,
                      butequal,
                    ],
                  )
                ],
              ),
            ),
            flex: 7,
          ),
        ],
      ),
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
