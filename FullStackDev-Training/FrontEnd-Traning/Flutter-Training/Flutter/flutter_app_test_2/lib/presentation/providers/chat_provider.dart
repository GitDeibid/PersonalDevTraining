//
import 'package:flutter/material.dart';
import 'package:flutter_app_test_2/config/helpers/get_yes_no_answer.dart';
import 'package:flutter_app_test_2/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  //Puedo definir propiedades que permiten el control de otras propiedades de otros widget.
  final ScrollController chatScrollController = ScrollController();
  final GetNoYesAnswer gYnA = GetNoYesAnswer();



  List<Message> msnList =[
    Message(text: 'Hii', fW: FromWho.mine),
    Message(text: 'Do you comback from work?', fW: FromWho.mine),
  ];

  //Metodos
  Future <void> sendMessage(String text) async {
    if (text.isEmpty) return;  
    final newMessage = Message(text: text, fW: FromWho.mine);
    msnList.add(newMessage);
    if (newMessage.text.endsWith('?')) await herReply();
    
    //Indicar a fluter que hubo un cambio y que se debe redibujar.

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> herReply() async{
    final hMsn = await gYnA.getAnswer();
    msnList.add(hMsn);
    notifyListeners();

    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async{
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(chatScrollController.position.maxScrollExtent, 
    duration: const Duration(milliseconds: 300), 
    curve: Curves.easeOut);
  }
}