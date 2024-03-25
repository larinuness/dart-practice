//remover duplicadas
void main(List<String> args) {
  final s = Solution();
  s.removeDuplicates([1, 1, 2]);
}

class Solution {
  int removeDuplicates(List<int> nums) {
    List<int> temp = nums.toSet().toList();
    nums.clear();
    nums.addAll(temp);
    print(nums);
    return nums.length;
  }
}
