import 'package:dart_practice_oop/Singleton/singleton_.dart';

void main(){
  print(AppConfig.init(
      apiKey: "KEY_123",
      serverUrl: "https://api.app.com",
      isDebug: true));
}