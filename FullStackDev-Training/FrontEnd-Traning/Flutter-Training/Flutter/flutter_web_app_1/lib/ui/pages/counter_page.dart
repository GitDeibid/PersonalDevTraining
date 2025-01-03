import 'package:flutter/material.dart';
import 'package:flutter_web_app_1/ui/shared/custom_app_menu.dart';
import 'package:flutter_web_app_1/ui/shared/custom_flat_btn.dart';

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
          const CustomAppMenu(),
          const Spacer(),
          const Text('Contador Stateful', style: TextStyle(fontSize: 20.0),),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Contador: $counter',
                style: const TextStyle(fontSize: 100, fontWeight: FontWeight.bold),),
            ),
          ),
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
            const Spacer()
        ],
      ),
    );
  }
}