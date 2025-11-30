void main(){
  List<int> nums1 = [0, 2, 1, 5, 3, 4];
  List<int> ans1 = buildArray(nums1);

  print("Input: nums = $nums1");
  print("Output: $ans1");
}

List<int> buildArray(List<int> nums) => List.generate(nums.length, (i) => nums[nums[i]]);