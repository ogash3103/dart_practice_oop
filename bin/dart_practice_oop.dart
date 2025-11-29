void main(){
  int Function(int) sum;
  sum = digitSum;
  print(sum(12345));
}

int digitSum(int n){
  if(n < 0){
    n = -n;
  }

  if(n == 0) return 0;

  int oxirgiNum = n % 10;
  print('oxirgiNum: $oxirgiNum');
  int qolganNum = n ~/ 10;
  print('qolganNum: $qolganNum');

  return oxirgiNum + digitSum(qolganNum);
}