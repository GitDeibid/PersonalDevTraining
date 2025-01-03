import 'package:flutter/material.dart';
import 'package:flutter_web_app_1/provider/counter_provider.dart';
//import 'package:flutter_web_app_1/ui/shared/custom_app_menu.dart';
import 'package:flutter_web_app_1/ui/shared/custom_flat_btn.dart';
import 'package:provider/provider.dart';

class CounterProviderView extends StatelessWidget {
  final String base;

  const CounterProviderView({super.key, required this.base});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterProvider(base),
        child: _CounterProviderPageBody());
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final coutnerProvider = Provider.of<CounterProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //const CustomAppMenu(),
        //const Spacer(),
        const Text(
          'Contador Provider',
          style: TextStyle(fontSize: 20.0),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Contador: ${coutnerProvider.counter}',
              style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatBtn(
                txt: 'Incrementar',
                onPressed: () => coutnerProvider.increment()),
            CustomFlatBtn(
              txt: 'Decrementar',
              onPressed: () => coutnerProvider.decrement(),
              color: Colors.blue,
            )
          ],
        ),
        const Spacer()
      ],
    );
  }
}
