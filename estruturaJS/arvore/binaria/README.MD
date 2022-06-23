# ÁRVORE BINÁRIA E ÁRVORE BINÁRIA DE BUSCA

- Árvore Binária: o nó tem apenas dois filhos, um a esquerda e um a direita.
- Árvore Binária de Busca: como a binária citada, porém os valores menores ficam no lado esquerdo e os maiores no direito.

- Assim como na lista ligada, usaremos os ponteiros para representar as conexões entre os nós. cada nó terá apontará para o filho a esquerda e outro a direita.

### Estrutura
- Classe Node:
  - estrutura a chave e os ponteiros para a direita e esquerda
- Classe ArvorePesquisaBinaria:
  - estrutura o nó Raiz
  - **métodos**
    - inserir(chave)
    - pesquisar(chave)
    - pecorrerEmOrdem
    - pecorrerPreOrdem
    - pecorrerPosOrdem
    - minimo
    - maximo
    - remover(chave)
  - 