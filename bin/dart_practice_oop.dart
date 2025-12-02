void moveZeros(List<int> num){
  int insertPos = 0;

  for(int i = 0; i < num.length; i++){
    if(num[i] != 0){
      num[insertPos] = num[i];
      insertPos++;
    }
  }

  while(insertPos < num.length){
    num[insertPos] = 0;
    insertPos++;
  }
}

void main(){
  List<int> nums = [0,1,0,3,12];
  moveZeros(nums);
  print(nums);
}