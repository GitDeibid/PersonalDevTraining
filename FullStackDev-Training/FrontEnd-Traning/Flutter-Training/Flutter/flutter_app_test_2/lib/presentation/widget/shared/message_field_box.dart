import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    //final colores = Theme.of(context).colorScheme;
    final focusNode = FocusNode();
    final textController = TextEditingController();
    //Decorador input
    final border = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40));

    final inputDecorator = InputDecoration(
      hintText: 'Termina tu mensaje con "?"',
        enabledBorder: border,
        focusedBorder: border,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final textValue = textController.value.text;
            print('---> $textValue');
            textController.clear();
          },
        )
      );

    return TextFormField(      
      onTapOutside: (event) => focusNode.unfocus(),
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecorator,
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus(); //Mantiene el foco en el objeto "textform" luego de realizar un enter.
      },
    );
  }
}