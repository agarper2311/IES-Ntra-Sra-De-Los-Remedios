package org.example;

import java.util.Scanner;

/**
 * Angel Garcia Perez 1ºDAW
 *
 * Imprime por consola una escalera numérica de N niveles,
 * de forma que los números en una columna sean todos iguales
 * y en una fila sean todos una serie aritmética hasta N.
 *
 * Ej: N=5
 * 1
 * 1 2
 * 1 2 3
 * 1 2 3 4
 * 1 2 3 4 5
 */

public class Ejercicio5 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Introduce el número de niveles para la escalera: ");
        int N = sc.nextInt();

        for (int i = 1; i <= N; i++) { // Controlamos las filas
            for (int j = 1; j <= i; j++) { // Controlamos las columnas en cada fila
                System.out.print(j + " ");
            }
            System.out.println(); // Salto de línea después de cada fila
        }

    }
}
