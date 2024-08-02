import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:paquetes/clases/pais.dart';
//import 'package:paquetes/clases/responses.dart';

/*void getRespService(){
  final url = Uri.https('reqres.in','/api/users',{'page':'2'});
  http.get(url).then((res){
      //print(r.body)
      //Extraer y utilizar el body.
      /*final body = jsonDecode(res.body);
      print(body);      
      print('Page: ${body['page']}');     //AL SER UN MAPA, SE COLOCA ENTRE COMILLAS EL IDENTIFICADOR | LLAVE QUE QUIERO.
      print('Per_page: ${body['per_page']}');
      print('Id del tercer elemento del body: ${body['data'][2]['id']}');*/

      //USAR CLASE FORMATEADA PARA TRABAJAR CON JSONS.
      //reqResRespuestaFromJson(res.body); //Devuelve una nueva instancia. | tipo ReqResRespuesta
      final resReqRes = reqResRespuestaFromJson(res.body);
      print('Page: ${resReqRes.page}');     
      print('Per_page: ${resReqRes.perPage}');
      print('Id del tercer elemento del body: ${resReqRes.data[2].id}');
    });
}*/



void getRespPais(){
  final urlP = Uri.https('restcountries.com','/v3.1/name/chile');
  http.get(urlP).then((r){
    print(r.body);
    List<dynamic> jsonData = json.decode(r.body);
    print(jsonData[0].toString());
    final cl = paisFromJson(jsonData[0].toString());
    //print(cl);
    /*print('Hola');
    print(cl);
    print('====================================');
    print('Pais: ${cl.name}');
    print('Población: ${cl.population}');
    print('Fronteras: ${cl.borders}');
    print('Idioma: ${cl.languages.spa}');
    print('Latitud: ${cl.latlng[0]}');
    print('Longitud: ${cl.latlng[1]}');
    print('Moneda: ${cl.currencies.clp.name}');
    print('Bandera: ${cl.flags.png}');
    print('====================================');*/
  });
}