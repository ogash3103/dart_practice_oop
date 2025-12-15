import 'package:dart_practice_oop/audio_player.dart';
enum Direction{
  north,
  south,
  east,
  west
}
void main(){
  final audio = AudioPlayer();

  audio.play();
print(getDirectionInfo(Direction.north));
}

String getDirectionInfo(Direction direction){

  switch(direction){
    case Direction.north: return "Shimol (North)";
    case Direction.south: return "Janub (South)";
    case Direction.east:  return "Sharq (East)";
    case Direction.west:  return "G‘arb (West)";
  }
}

