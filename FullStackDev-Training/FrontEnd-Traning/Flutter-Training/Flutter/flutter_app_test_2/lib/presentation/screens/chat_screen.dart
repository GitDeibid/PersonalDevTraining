
import 'package:flutter/material.dart';
import 'package:flutter_app_test_2/domain/entities/message.dart';
import 'package:flutter_app_test_2/presentation/providers/chat_provider.dart';
import 'package:flutter_app_test_2/presentation/widget/chat/her_message_bubble.dart';
import 'package:flutter_app_test_2/presentation/widget/chat/message_bubble.dart';
import 'package:flutter_app_test_2/presentation/widget/shared/message_field_box.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: _ChatView(),//Similar a un div.

    );
  }
}

//Separación de AppBar en otro widget personalizado.

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Padding(
        padding: EdgeInsets.all(4.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://media.licdn.com/dms/image/D4E03AQFOv1SRXGW_cA/profile-displayphoto-shrink_800_800/0/1706234781462?e=1728518400&v=beta&t=iFVmWTGO-85UKCtHzbdyE1fU-ri4BcIXJbaZrN1gpSI'),
    
        ),
      ),//Crea un avatar circular
      title: const Text('Mi Yiss ❤️'),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); //What is this?

}

//ChatView a traves de listview.

class _ChatView extends StatelessWidget { //Provider maneja el estado.
  
  

  @override
  Widget build(BuildContext context) {

    final chatProvider = context.watch<ChatProvider>(); // Provider del chat || En base al contexto de la aplicación, como el provider fue definido a un nivel alto, es posible llamarlo desde acá...

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child:ListView.builder(
                controller: chatProvider.chatScrollController, //Desde el provider...
                
                itemCount: chatProvider.msnList.length, //Revisa cuantos mensajes hay.
                //itemCount: 20,//Define la cantidad máxima de elementos sobre los cuales es posible hacer scroll...
                itemBuilder: (BuildContext context, int index) { //Construido en timpo de ejecución.     
                  final msn = chatProvider.msnList[index];
                  return (msn.fW == FromWho.her) 
                  ? HerMessageBubble(herMsn: msn,) //Debe recibir la imagen como obligatoria.
                  : MyMessageBubble(msn: msn,);           
                /*return (index % 2 == 0)
                ? const HerMessageBubble()
                : const MyMessageBubble();*/
               },
              )), //Expande el widget hijo al espacio disponible del padre.
            MessageFieldBox(onValue: (value) => chatProvider.sendMessage(value),)
          ],
        ),
      ),//Varios widget internos.
    ); 
  }
}