public class Jv {
//    '0 1 2 3 4 5 6 7 8'
//    '1 2 3 4 5 6 7 8 9'
    public char[] tabuleiro = new char[9];

    public char jogador; // 'x'  'o'

    public static  int qtd_no = 0;

    public Jv(){
        for (int i = 0; i < tabuleiro.length; i++) {
            tabuleiro[i] = ' ';
        }
        jogador = 'o';
    }

    public Jv (char [] tabuleiro, char jogador){
        this.tabuleiro = tabuleiro;
        this.jogador = jogador;
    }



}
