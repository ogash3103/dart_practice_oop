
enum AudioPlayerState{
  idle,
  loading,
  playing,
  paused,
  stopped,
}


class AudioPlayer{
AudioPlayerState state = AudioPlayerState.idle;


void load(){
  state = AudioPlayerState.loading;
print('Audio yuklanmoqda...');
}

void play(){
  state = AudioPlayerState.playing;
  print('Audio ijro etilmoqda 🎵');
}

void pause(){
  state = AudioPlayerState.paused;
  print('Audio pauzaga qo‘yildi ⏸️');
}

void stop(){
  state = AudioPlayerState.stopped;
  print('Audio uchirildi..');
}

void checkState(){
  print('Joriy holat: $state');
}

}