void main(){
  int n = 8;

  printStarPattern(n);
}

void printStarPattern(int N){
  print('*' * (N + 3));

  for(int i = 0; i < N; i++){
    StringBuffer row = StringBuffer();
    row.write('*' * i);
    row.write(' ');

    int rightStarsCount = (N + 3) - (i + 1);

    if(rightStarsCount > 0) row.write('*' * rightStarsCount);

    print(row.toString());
  }
  print('*' * (N + 3));
}