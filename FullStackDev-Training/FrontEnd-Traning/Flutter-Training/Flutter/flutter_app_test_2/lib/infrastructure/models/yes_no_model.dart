//Adaptación de la respuesta API...

// To parse this JSON data, do
//
//     final yesNoModel = yesNoModelFromJson(jsonString);



import 'package:flutter_app_test_2/domain/entities/message.dart';

class YesNoModel {
    String answer;
    bool forced;
    String image;

    YesNoModel({
        required this.answer,
        required this.forced,
        required this.image,
    });

    factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
    };

    Message toMessageEntity()=>Message( //Mapper para regresar la respuesta.
        text: answer == 'yes' ? 'Si' : 'No', 
        fW: FromWho.her,
        imgUrl: image
      );
}
