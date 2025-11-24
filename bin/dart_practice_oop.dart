void main() {
  print(calculateSumRecursive(5));
}

int calculateSumRecursive(int n){
if(n == 0) return 0;

return n + calculateSumRecursive( n - 1);
}
