class AppConfig{
  static final AppConfig _instance = AppConfig._internal();

  late String apiKey;
  late String serverUrl;
  late bool isDebug;

  AppConfig._internal();
  factory AppConfig() => _instance;

  static init({
    required String apiKey,
    required String serverUrl,
    required bool isDebug,
}){
    apiKey = apiKey;
    serverUrl = serverUrl;
    isDebug = isDebug;
  }
}