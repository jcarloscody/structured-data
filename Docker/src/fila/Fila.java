package fila;

public class Fila {
    private int[] arr;      // array para armazenar elementos da queue
    private int front;      // front aponta para o elemento front na queue
    private int rear;       // traseira aponta para o último elemento da queue
    private int capacity;   // capacidade máxima da queue
    private int count;      // tamanho atual da queue

    // Construtor para inicializar uma queue
    Fila(int size)
    {
        arr = new int[size];
        capacity = size;
        front = 0;
        rear = -1;
        count = 0;
    }

    // Função utilitária para desenfileirar o elemento frontal
    public int dequeue()
    {
        // verifica o underflow da queue
        if (isEmpty())
        {
            System.out.println("Underflow\nProgram Terminated");
            System.exit(-1);
        }

        int x = arr[front];

        System.out.println("Removing " + x);

        front = (front + 1) % capacity;
        count--;

        return x;
    }

    // Função utilitária para adicionar um item à queue
    public void enqueue(int item)
    {
        // verifica se há estouro de queue
        if (isFull())
        {
            System.out.println("Overflow\nProgram Terminated");
            System.exit(-1);
        }

        System.out.println("Inserting " + item);

        rear = (rear + 1) % capacity;
        arr[rear] = item;
        count++;
    }

    // Função utilitária para retornar o elemento da frente da queue
    public int peek()
    {
        if (isEmpty())
        {
            System.out.println("Underflow\nProgram Terminated");
            System.exit(-1);
        }
        return arr[front];
    }

    // Função utilitária para retornar o tamanho da queue
    public int size() {
        return count;
    }

    // Função utilitária para verificar se a queue está vazia ou não
    public boolean isEmpty() {
        return (size() == 0);
    }

    // Função utilitária para verificar se a queue está cheia ou não
    public boolean isFull() {
        return (size() == capacity);
    }

    public void fila(){
        for (int i = 0; i < count; i++) {
            System.out.println(i+1 + "º -> " + arr[i]);
        }
    }
}
