package org.example;

import java.util.Scanner;

/**
 * Angel Garcia Perez 1ºDAW
 *
 * Implementa un programa que determine si un número decimal
 * introducido por el usuario es un 'casi-cero'. Un número es casi-cero
 * si está entre -1 y 1, pero no es exactamente 0.
 */

public class Ejercicio4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Juego del Casi-Cero");
        System.out.print("Introduzca un número decimal: ");
        double num = sc.nextDouble();

        if (num > -1 && num < 1 && num != 0) {
            System.out.println("El número es 'casi-cero'.");
        } else {
            System.out.println("El número NO es 'casi-cero'.");
        }

    }
}
