import 'package:flutter/material.dart';
import 'package:flutter_web_app_1/ui/pages/shared/custom_flat_btn.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Contador: $counter',
            style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomFlatBtn(
                  txt: 'Incrementar', 
                  onPressed: () => setState(()=>counter++)
                ),
                CustomFlatBtn(
                  txt: 'Decrementar', 
                  onPressed: () => setState(()=>counter--),
                  color: Colors.blue,

                )
              ],
            ),
        ],
      ),
    );
  }
}