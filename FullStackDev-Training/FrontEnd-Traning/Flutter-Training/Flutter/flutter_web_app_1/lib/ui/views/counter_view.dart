import 'package:flutter/material.dart';
//import 'package:flutter_web_app_1/ui/shared/custom_app_menu.dart';
import 'package:flutter_web_app_1/ui/shared/custom_flat_btn.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //const CustomAppMenu(),
          //const Spacer(),
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
      );
  }
}