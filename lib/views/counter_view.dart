import 'package:flutter/material.dart';
import 'package:simple_flutter_app/widgets/buttons/appbar_button.dart';
import 'package:simple_flutter_app/widgets/buttons/counter_fab.dart';
import 'package:simple_flutter_app/widgets/shared/drawer_menu.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int _counter = 0;

  void increaseCounterBy1() {
    _counter++;
    setState(() {});
  }

  void decreaseCounterBy1() {
    if (_counter != 0) _counter--;
    setState(() {});
  }

  void restartCounter() {
    _counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const double fabVerticalSpacing = 20.0;
    const double titleSize = 30.0;
    const double textSize = 20.0;

    return Scaffold(
      appBar: AppBar(
        // leading property of AppBar is for putting a Widget before the title. Commented since drawer property is used.
        // leading: const Icon(Icons.menu),
        title: const Center(
          child: Text(
            'Counter',
            style: TextStyle(fontSize: titleSize),
          ),
        ),
        actions: [
          AppBarButton(
            onPressed: restartCounter,
            icon: const Icon(Icons.refresh),
          ),
          AppBarButton(
            onPressed: decreaseCounterBy1,
            icon: const Icon(Icons.exposure_minus_1),
          ),
          AppBarButton(
            onPressed: increaseCounterBy1,
            icon: const Icon(Icons.plus_one),
          ),
        ],
      ),
      drawer: const DrawerMenu(titleSize: titleSize, textSize: textSize),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 80.0, fontWeight: FontWeight.w200),
            ),
            Text(
              'Click${_counter != 1 ? 's' : ''}',
              style: const TextStyle(fontSize: 40.0, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CounterFAB(
            onPressed: restartCounter,
            icon: const Icon(Icons.refresh),
          ),
          const SizedBox(height: fabVerticalSpacing),
          CounterFAB(
            onPressed: decreaseCounterBy1,
            icon: const Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(height: fabVerticalSpacing),
          CounterFAB(
            onPressed: increaseCounterBy1,
            icon: const Icon(Icons.plus_one),
          ),
        ],
      ),
    );
  }
}
