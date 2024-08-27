//Respuesta de la petición.

import 'package:dio/dio.dart';
import 'package:flutter_app_test_2/domain/entities/message.dart';
import 'package:flutter_app_test_2/infrastructure/models/yes_no_model.dart';


class GetNoYesAnswer{

  //prop
  final _dio = Dio();

  Future <Message> getAnswer() async { //Lo que se retorne debe ser una nueva instancia de un mensaje...
    final response = await _dio.get('https://yesno.wtf/api');
    final yesNoAnswer = YesNoModel.fromJsonMap(response.data); //Obtener valores formato jsnon  de la respuesta...

    return yesNoAnswer.toMessageEntity();

    //throw UnimplementedError();

  } 
}