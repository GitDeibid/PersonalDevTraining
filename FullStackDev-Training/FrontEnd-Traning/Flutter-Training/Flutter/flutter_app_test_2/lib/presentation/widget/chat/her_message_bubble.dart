import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(          
          decoration: BoxDecoration(            
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text('Adipisicing sint culpa reprehenderit labore consectetur qui ad amet sunt proident irure Lorem.', style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 10,),
        _ImageBubble(),

      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ClipRRect( //Widget para recortar.
      borderRadius: BorderRadius.circular(20),
      child: Image.network('https://yesno.wtf/assets/yes/13-c3082a998e7758be8e582276f35d1336.gif',
      width: size.width*0.3,
      height: 150,
      fit: BoxFit.cover, //Aplica el tamaño del marco rrect al elemento.
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child; //Ya se completó la carga del elemento.
        return Container(
          width: size.width*0.3,
          height: 150,
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: const Text('Yiss está enviando un mensaje...'),
        );
                  
      },
      ));
  }
}