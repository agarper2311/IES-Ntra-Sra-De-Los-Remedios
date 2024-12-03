package Ejercicio4;

import java.util.Random;

/**
 * Crear una tabla de longitud 10 que se inicializará con números
 * aleatorios comprendidos entre 1 y 100.
 *
 * Mostrar la suma de todos los números enteros aleatorios que se guardan en la
 * tabla.
 */

public class Ejercicio4 {
    public static void main(String[] args) {
        // Crear una tabla de longitud 10
        int[] numeros = new int[10];
        Random random = new Random(); // Generador de números aleatorios
        int suma = 0; // Variable para almacenar la suma

        // Inicializar el array con números aleatorios y calcular la suma
        for (int i = 0; i < numeros.length; i++) {
            numeros[i] = random.nextInt(100) + 1; // Generar números entre 1 y 100
            suma += numeros[i]; // Sumar el número actual a la suma
        }

        // Mostrar los números generados
        System.out.println("Números aleatorios generados:");
        for (int num : numeros) {
            System.out.print(num + " ");
        }

        // Mostrar la suma de los números
        System.out.println("\n\nSuma de los números: " + suma);
    }
}
