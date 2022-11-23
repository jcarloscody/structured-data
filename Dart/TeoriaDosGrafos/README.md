 # Teoria dos Grafos
 https://www.youtube.com/watch?v=T6yKp82k9vM&list=PLrOyM49ctTx-xtyVeuO7ylclgXHd4ws9a&index=2&t=85s&ab_channel=ProfessorDouglasMaioli

<img src="https://raw.githubusercontent.com/jcarloscody/structured-data/main/Dart/TeoriaDosGrafos/img/grafos.png">

## Pontes de Konigsberg
- Encontrar um caminho que passe pelas 7 pontes, de forma que passe uma única vez em cada ponte.
- O **matemático Leonhard Euler**conseguiu resolver este problema e foi nesta tentativa que ele **criou a teoria dos grafos** e chegou a uma conclusão que é impossível. 


## O que é Um Grafo?
- é um conjunto de vértices (ou nós)  e arestas(ou arcos), em que cada aresta conecta dois vértices
- é um par de conjuntos G = (V,A), em que V é o conjunto de vértices e A é o conjunto de arestas;
- quando existe uma aresta ligando dois vértices dizemos que os vértices são adjacents, e que a aresta é incidente aos vértices.
- numeros de vertices: |v|
- numeros de arestas: |a|
- grau do vertice x: d(v). é o numero de vezes que as arestas incidem sobre o vertice v é chamado grau do vértice v, simbolizado por d(v). este grau significará cada coisa a depender de tipo fim. se alisa p ex quantidade de jogos de uma sala entao isto indicará as quantidades de jogos daquela sala.

<img src="https://raw.githubusercontent.com/jcarloscody/structured-data/main/Dart/TeoriaDosGrafos/img/oquegrafo.png">
<img src="https://raw.githubusercontent.com/jcarloscody/structured-data/main/Dart/TeoriaDosGrafos/img/oquegrafo2.png">
<img src="https://raw.githubusercontent.com/jcarloscody/structured-data/main/Dart/TeoriaDosGrafos/img/grau.png">

<br/>
<br/>

## Aplicações da teria
- uma empresa de logistica

<img src="https://raw.githubusercontent.com/jcarloscody/structured-data/main/Dart/TeoriaDosGrafos/img/aplicacao_grafos.png">

## TERMINOLOGIA
### **`Grafo Direcionado`**
- é um grafo onde cada aresta tem uma orientação

### Laço
- é uma aresta que liga um vertice a ele mesmo

### Multigrafo
- dois vertices podem estar ligados por mais de uma aresta, nesse caso dizemos que estas sao arestas paralelas ou multiplas.

### Grafo Simples
- grafo sem laços ou multigrafo

### Ordem de um Grafo
- quantidade de vertices que ele possui

### Grau de um Vertice de um Grafo Direcionado
- cada vertice tera:
  - grau de entrada: quantidade de arestas que entram no vertice.
  - grau de saida: quantidade de arestas que saem de um vertice.
- se somar ge + gs será o valor dos graus de um vertice ñ direcionado


### Mais sobre os Graus dos Vertices
- um vértice de grau 0 é dito isolado
- um vertice de grau 1 é dito pendente ou folha ou terminal

### Grafo Completo
- todos os vertices estao se conectados

### Subgrafo


### Passeio
- é uma sequencia de arestas do tipo (v1, v2)(v2,v3)...


### Trilha
- se todas as arestas do passeio sao distintas 
- Fechada: uma trilha onde o ponto de inicio é = ao ponto de termino ai é fechada.

### Caminho
- uma tilha q nao repete vertice(a excecao do ultimo e primeiro) 
- ou seja `nao pode repetir vertice e aresta` a exceção quando começa/termina no mesmo local

### Ciclo
- UM caminho que comeca/termina no mesmo local


### Grafo Conexo
- se existe um caminho entre par de vertices, caso contrario desconexo