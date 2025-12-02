import 'dart:ffi';

void main(){
  List<int> nums1 = [1, 2, 2, 4];
  int xatoRaqam1 = findErrorNumber(nums1);

  print("List: $nums1");
  print("Xato ketgan (takrorlangan) raqam: $xatoRaqam1");
}

int findErrorNumber(List<int> nums){

  Set<int> number = {};
  int repeatNum = -1;

  for(int num in nums){
    if(!number.add(num)){
      repeatNum = num;

      break;
    }
  }

  return repeatNum;
}