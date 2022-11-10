# QUEUE
- FIFO - first in, first out

- Forma de Implementação
  - primerio: mostra onde vai remover
    - para remover
      - resto = primeiro mod maximo
  - ultimo: mostra onde vai inserir
    - para inserir
      - resto =  ultimo mod maximo
  - cheio: ultimo - primeiro
  - vazio: ultimo == primeiro

<img src="https://raw.githubusercontent.com/jcarloscody/structured-data/main/Dart/2-Fila/img/fila.png">
<img src="https://raw.githubusercontent.com/jcarloscody/structured-data/main/Dart/2-Fila/img/fila_inserir.png">