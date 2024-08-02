/**
 * Patron singleton => La instruccion genera la misma instancia previamente generada de la clase.
 * 
 */
import 'Clases/mi_servicio.dart';

void main(List<String> args) {
  final spotify_service = new MiServicio();
  spotify_service.url = 'http://api.spotify.com';

  final spotify_service2 = new MiServicio();
  spotify_service2.url = 'http://api.spotify.com/v3';

  print(spotify_service == spotify_service2);//False
  print(spotify_service.url);
  print(spotify_service2.url);

}