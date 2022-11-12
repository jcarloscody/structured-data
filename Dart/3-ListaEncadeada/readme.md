# Lista Linear


```
Lista Linear é uma estrutura de dados na qual elementos de um mesmo tipo de dado estão organizados de maneira sequencial. não necessariamente, estes elementos estão fisicamente em sequência. Mas todos elementos devem ter exatamente um sucessor e predecessor, com exceção do primeiro, q n tem predecessor e o ultimo que nao tem sucessor.
```

### TIPOS
- Sequenciais: são os vetores, uma lista que se encontra numa sequencia fisica.
  - Tipos
    - estático
    - dinâmico
  - Vantagens: fácil acesso, tempos constante
  - Desvantagens: 
    - alocar espaço suficiente para todos instantaneamente
    - pode ter memória alocada ñ utilizada
    - pode ser dificil add/remove elementos e precisar fazer deslocamento
- Encadeadas: são o uso de ponteiros na lista. tbm chamado de sentinela. são uma lista linear dispersa, ouseja, ñ estao necessariamente sequencialmengte na memoria, porém a ordem lógica entre os elementos é mantida por meio do uso de ponteiros. então guardamos na lista o valor e o ponteiro.
  - Desvantagens:
    - o acesso em cada elementos ñ é em tempo constante, mas depende da quantidade de elementos.
  - Vantagens:
    - facil add/remove
    - o numero de elemtnos pode aumentar ou diminuir durante a execução


### Busca Binária
- é um algort de busca de um elemento em vetores que segue o paradigma de divisão e conquista. ela parte do pressuposto de que o vetor está **ordenado** e realiza sucessivas **divisões** do espaço de busca comparando o elemento buscado(chave) com o elemento no meio do vetor.
- construção
  - elemento buscado X
  - elemento do meio Y
  - se Y = X
    - achou
  - se Y < X
    - pega a metade posterior
  - se Y > X
    - pega a metade anterior
- Funciona com `**Lista linear Sequencial**` pq como visto, a busca na sequencial é direta, o tempo é constante, na ordem log n, mas na encadeada de todas as formas ele deverá passar por todos os elementos. 