import 'package:flutter/material.dart';
import 'package:flutter_web_app_1/locator.dart';
import 'package:flutter_web_app_1/services/navigation_service.dart';
import 'package:flutter_web_app_1/ui/shared/custom_flat_btn.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    //return _TDMenu();
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) =>
            (constraints.maxWidth > 520) ? _TDMenu() : _MobileMenu());
  }
}

class _TDMenu extends StatelessWidget {
  const _TDMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      //height: 50,
      //color: Colors.amber,
      child: Row(
        children: [
          //CustomFlatBtn(txt: 'Inicio', onPressed: ()=>Navigator.pushNamed(context, 'stateful'),color: Colors.black,),
          //CustomFlatBtn(txt: 'Inicio', onPressed: ()=>navigationService.navigateTo('stateful'),color: Colors.black,),
          CustomFlatBtn(
            txt: 'Inicio',
            onPressed: () =>
                locator<NavigationService>().navigateTo('stateful'),
            color: const Color.fromARGB(255, 67, 214, 202),
          ),
          const SizedBox(
            width: 10,
          ),
          //CustomFlatBtn(txt: 'Uso Provider', onPressed: () => Navigator.pushNamed(context, 'provider'),color: Colors.black),
          //CustomFlatBtn(txt: 'Uso Provider', onPressed: () =>navigationService.navigateTo('provider'),color: Colors.black),
          CustomFlatBtn(
              txt: 'Uso Provider',
              onPressed: () =>
                  locator<NavigationService>().navigateTo('provider'),
              color: Colors.black),
          const SizedBox(
            width: 10,
          ),
          //CustomFlatBtn(txt: 'Otra Página', onPressed: ()=> Navigator.pushNamed(context, 'abc'),color: Colors.black)
          //CustomFlatBtn(txt: 'Otra Página', onPressed: ()=> navigationService.navigateTo('abc'),color: Colors.black)
          CustomFlatBtn(
              txt: 'Otra Página',
              onPressed: () => locator<NavigationService>().navigateTo('abc'),
              color: Colors.black),
          SizedBox(
            width: 10,
          ),
          CustomFlatBtn(
              txt: 'Stateful100',
              onPressed: () =>
                  locator<NavigationService>().navigateTo('stateful/100'),
              color: Colors.black),
          SizedBox(
            width: 10,
          ),
          CustomFlatBtn(
              txt: 'Provider 200',
              onPressed: () =>
                  locator<NavigationService>().navigateTo('/provider?q=200'),
              color: Colors.black)
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      //height: 50,
      //color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //CustomFlatBtn(txt: 'Inicio', onPressed: ()=>Navigator.pushNamed(context, 'stateful'),color: Colors.black,),
          //CustomFlatBtn(txt: 'Inicio', onPressed: ()=>navigationService.navigateTo('stateful'),color: Colors.black,),
          CustomFlatBtn(
            txt: 'Inicio',
            onPressed: () =>
                locator<NavigationService>().navigateTo('stateful'),
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          //CustomFlatBtn(txt: 'Uso Provider', onPressed: () => Navigator.pushNamed(context, 'provider'),color: Colors.black),
          //CustomFlatBtn(txt: 'Uso Provider', onPressed: () =>navigationService.navigateTo('provider'),color: Colors.black),
          CustomFlatBtn(
              txt: 'Uso Provider',
              onPressed: () =>
                  locator<NavigationService>().navigateTo('provider'),
              color: Colors.black),
          const SizedBox(
            width: 10,
          ),
          //CustomFlatBtn(txt: 'Otra Página', onPressed: ()=> Navigator.pushNamed(context, 'abc'),color: Colors.black)
          //CustomFlatBtn(txt: 'Otra Página', onPressed: ()=> navigationService.navigateTo('abc'),color: Colors.black)
          CustomFlatBtn(
              txt: 'Otra Página',
              onPressed: () => locator<NavigationService>().navigateTo('abc'),
              color: Colors.black)
        ],
      ),
    );
  }
}
