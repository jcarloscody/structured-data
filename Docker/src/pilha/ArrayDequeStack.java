package pilha;

import java.util.ArrayDeque;
import java.util.Deque;

public class ArrayDequeStack <E> implements Stack<E> {
    private final Deque<E> deque = new ArrayDeque<>();

    @Override
    public void push(E item) {
        deque.addFirst(item);
    }

    @Override
    public E pop() {
        return deque.removeFirst();
    }

    @Override
    public E peek() {
        return deque.getFirst();
    }

    @Override
    public boolean isEmpty() {
        return deque.isEmpty();
    }
}
