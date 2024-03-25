// flores

void main(List<String> args) {
  final s = Solution();
  s.canPlaceFlowers([1, 0, 0, 0, 1], 1);
}

class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    for (int i = 0; i < flowerbed.length; i++) {
      for (var space in flowerbed) {
        if (space == 0) {
          return true;
        }
      }
    }

    return true;
  }
}
