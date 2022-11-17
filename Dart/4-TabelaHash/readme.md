# TABELA HASH 
- possui uma estrutura chave(dynamic) valor(int, indice)
- é implementado usando um vetor
- usamos uma função, função de espalhamento ou hash ou mapeamento, que transforma a chave em um valor inteiro (indice= 0 até n-1)
- é uma estrutura de dados especial que associa chaves de pesquisa a valores, através de uma função.
- Fim: a partir de uma chave simples, fazer uma busca rápida e obter o valor desejado.
- é boa se?
  - produzi um numero baixo de colisoes
  - ser facilmente computavel
  - ser uniforme
- Fator de Carga = N de Elementos / Tamnho Vetor
  -  N de Elementos < Tamnho Vetor
  -  Fc mais perto de 1 menos posicoes vazias
     -  indica mais dificil o tratametno de colisoes possiveis
  -  Fc mais perto de 0 mais posicoes vazias
     -  indica que está alocando memoria desnecessárias
-  Funçao Hash:
   -  Chave mod% Tamanho = int


## Tratamento de Colisões
Colisão acontece quando duas chaves produzem por meio da funcao de espalhamento o mesmo valor para inserir. Quando isto acontece o que devemos fazer?
Duas formas:
- Encadeamento Exterior ou separado:
  - usamos lista encadeadas: para cada posição terá um ponteiro para uma lista encadeada
- Encadeamento Interior ou Aberto   
  - Heterogen: 
  - Homogeneo<teste linear>

### Encadeamento Exterior
### Encadeamento Interior Heterogeneo