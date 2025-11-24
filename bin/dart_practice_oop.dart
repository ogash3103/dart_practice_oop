void main() {
  print(fibonacciRecursive(10));
}

int fibonacciRecursive(int n){

if(n < 0) throw ArgumentError("Fibonachchi indeksi (n) manfiy bo'lmasligi kerak.");

if(n == 0) return 0;
if(n == 1) return 1;

return fibonacciRecursive( n - 1) + fibonacciRecursive(n - 2);



}
