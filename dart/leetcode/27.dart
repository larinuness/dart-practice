void main(List<String> args) {
  final s = Solution();
  s.removeElement([1, 2, 3, 0, 0, 0], 0);
}

class Solution {
  int removeElement(List<int> nums, int val) {
    int result = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != val) {
        nums[result] = nums[i];
        result++;
      }
    }
    print(result);
    return result;
  }
}
