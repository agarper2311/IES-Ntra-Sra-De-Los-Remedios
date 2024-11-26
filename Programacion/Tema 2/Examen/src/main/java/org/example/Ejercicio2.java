package org.example;

import java.util.Scanner;

/**
 * Angel Garcia Perez 1ºDAW
 *
 * Diseña un programa que solicite un número entero positivo,
 * calcule su factorial y muestre el resultado. Si el número es negativo,
 * muestra un mensaje de error y termina el programa
 */

public class Ejercicio2 {
    public static void main(String[] args) {
        int num;
        Scanner sc = new Scanner(System.in);

        System.out.println("Ingrese un número entero positivo: ");
        num = sc.nextInt();

        if (num < 0) {
            System.out.println("Error: El número no puede ser negativo.");
        } else {
            long factorial = 1; // Usaré long para manejar números grandes
            for (int i = 1; i <= num; i++) {
                factorial *= i;
            }
            System.out.println("El factorial de " + num + " es: " + factorial);
        }

    }
}
