//numero que mais se repete num array

void main(List<String> args) {
  final s = Solution();
  s.majorityElement([3, 2, 3]);
}

class Solution {
  // Definindo a função majorityElement que recebe uma lista de inteiros e retorna um inteiro
  int majorityElement(List<int> nums) {
    // Inicializando as variáveis count e majority
    int count = 0; // Contador para acompanhar as ocorrências do elemento atual
    int majority =
        0; // Armazena o elemento que ocorre a maioria das vezes na lista

    // Iterando sobre cada elemento na lista nums
    for (int num in nums) {
      // Verifica se o contador é zero, indicando um novo candidato a maioria
      if (count == 0) {
        majority =
            num; // Se o contador for zero, atualiza o candidato a maioria para o elemento atual
      }

      // Ajusta o contador com base no elemento atual
      // Se o elemento atual for igual ao candidato a maioria, incrementa o contador, caso contrário, decrementa
      count += (majority == num) ? 1 : -1;
    }

    // Imprime o elemento que é considerado majoritário
    print(majority);

    // Retorna o elemento que ocorre a maioria das vezes na lista
    return majority;
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
