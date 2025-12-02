void printSpecialOrder(List<int> num){
 int left = 0;
 int right = num.length - 1;
 bool takeFromLeft = true;

 while(left <= right){
   if(takeFromLeft){
     if(left <= right) print(num[left++]);
     if(left <= right) print(num[left++]);
   } else {
     if (right >= left) print(num[right--]);
     if (right >= left) print(num[right--]);
   }

   takeFromLeft = !takeFromLeft;
 }
}

void main(){
  List<int> nums = [10, 20, 30, 40, 50, 60, 70, 80];
  printSpecialOrder(nums);

}