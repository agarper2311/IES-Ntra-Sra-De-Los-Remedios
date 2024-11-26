package org.example;

import java.util.Scanner;

/**
 * Angel Garcia Perez 1ºDAW
 * <p>
 * Escribir un programa que pida un número entero al usuario,
 * determine si es par o impar y muestre el resultado por consola.
 */

public class Ejercicio1 {
    public static void main(String[] args) {
        int num;
        Scanner sc = new Scanner(System.in);
        System.out.println("Ingrese un numero: ");
        num = sc.nextInt();

        if (num % 2 == 0) {
            System.out.println("El número " + num + " es par");
        } else if (num % 2 != 0) {
            System.out.println("El número "+num+" es impar");
        }

    }
}

