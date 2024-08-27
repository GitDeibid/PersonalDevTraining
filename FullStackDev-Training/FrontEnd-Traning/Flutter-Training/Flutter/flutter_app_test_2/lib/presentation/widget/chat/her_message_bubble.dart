import 'package:flutter/material.dart';
import 'package:flutter_app_test_2/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget {
  final Message herMsn;

  const HerMessageBubble({
    super.key, 
    required this.herMsn
  });

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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text(herMsn.text, 
            style: const TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 10,),
        _ImageBubble(herMsn.imgUrl!),

      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {  
  final  String imgURL;

  const _ImageBubble(this.imgURL);

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return ClipRRect( //Widget para recortar.
      borderRadius: BorderRadius.circular(20),
      child: Image.network(imgURL,
      width: size.width*0.3,
      height: 150,
      fit: BoxFit.cover, //Aplica el tamaño del marco rrect al elemento.
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child; //Ya se completó la carga del elemento.
        return Container(
          width: size.width*0.3,
          height: 150,
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: const Text('Yiss está enviando un meme...'),
        );
                  
      },
      ));
  }
}