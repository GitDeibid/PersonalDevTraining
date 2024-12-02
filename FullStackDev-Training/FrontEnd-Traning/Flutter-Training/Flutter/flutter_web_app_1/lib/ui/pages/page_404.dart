import 'package:flutter/material.dart';
import 'package:flutter_web_app_1/ui/shared/custom_flat_btn.dart';

class Page404 extends StatelessWidget {
  const Page404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('404',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            const SizedBox(height: 40,),
            const Text('No se encuentra la página...',style: TextStyle(fontSize: 35),selectionColor: Colors.red,),
            CustomFlatBtn(
              txt: 'Regresar al inicio', 
              onPressed: ()=>Navigator.pushNamed(context, 'stateful'))
          ],
        ),
        ),
    );
  }
  
}