import fila.Home;

import java.util.Scanner;

import lista.Lista;
import pilha.*;

public class Main {
    static boolean  x = false;
    public static void main(String[] args) {
        System.out.println("ESTRUTURA DE DADOS\n");

        while (true) {
            if (x){
                break;
            }
            lerOpcoes();

        }



    }

    public static void lerOpcoes (){
        Scanner s = new Scanner(System.in);
        System.out.println("\n Digite a opção desejada: \n 1- Vetor; \n 2- Lista; \n 3- Pilha; \n 4- Fila\n 5- sair \n");
        String o =s.nextLine();

        switch (o){
            case "1":
                vetorTabuada();
                break;
            case "2":
                Lista.main();
                break;
            case "3":
                PilhaImpl.main();
                break;
            case "4":
                Home.main();
                break;
            case "5":
                x = true;
                break;

        }
    }

    public static  String valor(){
        Scanner s = new Scanner(System.in);
        System.out.println("Digite um valor: \n");
        String o =s.nextLine();
        return  o;
    }

    public static void vetorTabuada(){
        Scanner s = new Scanner(System.in);
        System.out.println("Digite o valor da tabuada: \n");
        int o =s.nextInt();

        int v[] = new int[10];

        for (int i = 0; i < 10; i++) {
            v[i] = o * (i+1);
        }

        System.out.println("OS VALORES DA TABUADA FORAM: \n");
        for (int i = 0; i < v.length; i++) {
            System.out.println("\n " + v[i]);

        }
    }
}
