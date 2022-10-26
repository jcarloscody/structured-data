package fila;

public class Home {
    public static void main ()
    {
        // cria uma queue de capacidade 5
        Fila q = new Fila(5);

        q.enqueue(1);
        q.enqueue(2);
        q.enqueue(3);
        q.fila();
        System.out.println("The front element is " + q.peek());
        q.dequeue();
        System.out.println("The front element is " + q.peek());

        System.out.println("The queue size is " + q.size());

        q.dequeue();
        q.dequeue();

        if (q.isEmpty()) {
            System.out.println("The queue is empty");
        }
        else {
            System.out.println("The queue is not empty");
        }
    }
}
