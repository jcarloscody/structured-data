package lista;

import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

public class Lista {
    public static void main() {
        LinkedList<String> linkedList = new LinkedList<>(List.of("manga", "cebola", "maracuja"));
        linkedList.push("laranja");

        String collect = linkedList.stream().sorted().collect(Collectors.joining(", "));
        System.out.println("Lista completa:  \n " + collect);

        String headElement = linkedList.poll();
        System.out.println("Removido: " + headElement);

        System.out.println( "Lista completa:  \n " + linkedList.stream().sorted().collect(Collectors.joining(", ")));
    }
}
