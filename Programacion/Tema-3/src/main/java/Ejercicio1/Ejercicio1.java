package Ejercicio1;

/**
 * Crea tres tablas de cinco elementos: la primera de enteros, la
 * segunda de double y a tercera de booleanos.
 *
 * Muestra las referencias en las que se encuentra cada una de las
 * tablas anteriores.
 */

public class Ejercicio1 {
    public static void main(String[] args) {
        int[] intArray = {1, 2, 3, 4, 5}; // Array de enteros
        double[] doubleArray = {1.1, 2.2, 3.3, 4.4, 5.5}; // Array de doubles
        boolean[] booleanArray = {true, false, true, false, true, false}; // Array de booleanos

        // Mostrar la referencia de las tablas

        System.out.println("Referencia del array de enteros: "+ intArray);
        System.out.println("Referencia del array de enteros: "+ doubleArray);
        System.out.println("Referencia del array de enteros: "+ booleanArray);
    }
}
