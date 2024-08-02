class Location{
  final double lat;
  final double long;

  const Location (this.lat,this.long); //Palabra reservada const para definir constructor constante...
}
void main(List<String> args) {
  final sanFrancisco1 = new Location(18.2323, 39.0392);
  final sanFrancisco2 = new Location(18.2323, 39.0393);
  final sanFrancisco3 = new Location(18.2323, 39.0393);

  print(sanFrancisco1 == sanFrancisco2);//false
  print(sanFrancisco2 == sanFrancisco3);//false

  const sanFrancisco4 = const Location(18.2323, 39.0392);
  const sanFrancisco5 = const Location(18.2323, 39.0393);
  const sanFrancisco6 = const Location(18.2323, 39.0393);

  print(sanFrancisco4 == sanFrancisco5);//false
  print(sanFrancisco5 == sanFrancisco6);//true //Constructor constante con los mismos valores, apunta al mismo espacio en memoria.


}