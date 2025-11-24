void main() {
  int n = 5;
  String text = 'Dart';
  if(text.length >= n) {
    print(text);
  }else if(text.length < n) {
    print(text.padLeft(n, '.'));
  }else {
    print('xato');
  }
}