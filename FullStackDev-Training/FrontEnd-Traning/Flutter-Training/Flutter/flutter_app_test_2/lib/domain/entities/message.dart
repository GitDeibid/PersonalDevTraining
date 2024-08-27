
//Eslabón inicial de la aplicación para su funcionalidad.

enum FromWho{
  mine,
  her
}
class Message{
  final String text;
  final String? imgUrl;
  final FromWho fW;

  Message({
    required this.text, 
    this.imgUrl, 
    required this.fW
  });


}