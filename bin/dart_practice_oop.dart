void main(){
  const List<int> list = [2, 5, 3, 8, 7, 4];

  final oddProduct = list.where((x) => x.isOdd)
      .fold<int>(1, (prod, x) => prod * x);

  final evenSum = list.where((x) => x.isEven)
      .fold<int>(0, (sum, x) => sum + x);

  final result = oddProduct - evenSum;
  print(result);

}