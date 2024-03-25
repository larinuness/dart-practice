// encontrar todos os duplicados n array

//numero que mais se repete num array

void main(List<String> args) {
  // Cria uma instância da classe Solution
  final s = Solution();
  // Chama o método findDuplicates da instância s, passando uma lista como argumento
  s.findDuplicates([3, 2, 3, 4, 4]);
}

// Define a classe Solution
class Solution {
  // Define o método findDuplicates, que retorna uma lista de inteiros
  List<int> findDuplicates(List<int> nums) {
    // Inicializa uma lista vazia para armazenar os números duplicados
    List<int> res = [];

    // Verifica se a lista nums tem tamanho menor ou igual a 1
    // Se for o caso, retorna uma lista vazia
    if (nums.length <= 1) {
      return [];
    }
    // Loop pelos elementos da lista nums
    for (int i = 0; i < nums.length; i++) {
      // Loop pelos elementos restantes da lista nums
      // Começa a partir do próximo elemento após o atual (i + 1)
      for (int j = i + 1; j < nums.length; j++) {
        // Verifica se há duplicatas comparando o elemento atual (nums[i]) com os elementos subsequentes
        if (nums[i] == nums[j]) {
          // Se houver uma duplicata, adiciona o número duplicado à lista res
          res.add(nums[j]);
        }
      }
    }
    // Imprime a lista de números duplicados
    print(res);
    // Retorna a lista de números duplicados
    return res;
  }
}

class Solution2 {
  int majorityElement(List<int> nums) {
    int result = 0;

    for (int i = 0; i < nums.length; i++) {
      for (var n in nums) {
        if (n == i) {
          result++;
          result = i;
        }
      }
    }
    print(result);

    return result;
  }
}
