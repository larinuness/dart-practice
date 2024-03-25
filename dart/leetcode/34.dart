// acha o primeiro e o ultimo indice de um valor que deseja numa lista

void main(List<String> args) {
  final s = Solution();
  s.searchRange([19, 7, 7, 8, 8, 8, 8, 8, 10, 8, 19], 19);
}

class Solution {
  List<int> searchRange(List<int> nums, int target) {
    final List<int> result = [nums.indexOf(target), nums.lastIndexOf(target)];
    print(result);
    return result;
  }
}
