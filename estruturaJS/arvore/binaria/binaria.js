export class No{
    constructor(chave){
        this.chave = chave;
        this.esquerda = null;
        this.direita = null;
    }
}



export default class ArvorePesquisaBinaria{
    //a função de comparação passaremos pelo construtor da classe, pq com isto daremos a opção de trabalharmos com vários tipos de tipos
    constructor(funcaoDeComparacao){
        this.funcaoDeComparacao = funcaoDeComparacao;
        this.noRaiz = null;
    }

    inserir(chave){
        if (this.noRaiz == null) { //verifica se é o primeiro nó da árvore, ou seja, a primeira vez que estamos adicionando
            this.noRaiz == new No(chave);
        } else { //caso já tenha o nó raiz na árvore, usaremos um método auxiliar para adicionar os valores filhos
            this.inserirNo(this.noRaiz, chave);
        }
    }

    //método auxiliar que usa de recursão. ele vai examinar os filhos, se o filho for menor que o pai, ele irá para a esquerda, se ele for maior que o pai, ele irá para a direita
    inserirNo(no, chave){
        //ele é maior que o pai?
        if (this.funcaoDeComparacao(chave, no.chave) == Comparacao.MENOS) {//sim
            if (no.esquerda == null) {//verifica se o nó da esquerda é nulo, ou seja, o primeiro nó da esquerda a ser inserido
                no.esquerda = new No(chave); //inseri o valor
            } else {//se o filho a esquerda, ou seja, o nó da esquerda do pai já está preenchido, irá, por recursão, chamar o método novamente
                //com esta recursão, ele irá descer um nível.
                this.inserirNo(no.esquerda, chave);
            }
        } else {//caso a chave seja maior que o pai irá para a direita
            if (no.direita == null) {//mesmo esquema de estar preenchido ou não
                no.direita = new No(chave);
            } else {
                this.inserirNo(no.direita, chave);
            }
        }
    }
}


//um objeto complexo, pense como um enum, enumerador
const Comparacao = {
    MENOS: -1,
    GRANDE: 1
};

function funcaoDeComparacao(a, b) {
    if (a===b) {
        return 0;
    } else {
        return a < b ? Comparacao.MENOS : Comparacao.GRANDE;
    }
}
const arvore = new ArvorePesquisaBinaria(funcaoDeComparacao);
arvore.inserir(11);