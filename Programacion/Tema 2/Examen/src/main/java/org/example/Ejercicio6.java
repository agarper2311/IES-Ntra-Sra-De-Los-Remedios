package org.example;

import java.util.Scanner;

/**
 * Angel Garcia Perez 1ºDAW
 *
 * Escribe un programa que pida un número entero positivo
 * y use una función para determinar si un número es primo.
 * Debe mostrar todos los números primos hasta el número introducido y,
 * para cada primo, cuántos números compuestos menores que él existen.
 */

public class Ejercicio6 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Ingrese un número entero positivo: ");
        int num = sc.nextInt();

        if (num <= 0) {
            System.out.println("Por favor, ingrese un número positivo.");
        } else {
            mostrarPrimosYCompuestos(num);
        }

    }

    /**
     * Determinar si un número es primo.
     *
     * @param n Número a verificar.
     * @return true si el número es primo, false en caso contrario.
     */
    public static boolean esPrimo(int n) {
        if (n < 2) return false; // Los números menores que 2 no son primos
        for (int i = 2; i <= Math.sqrt(n); i++) {
            if (n % i == 0) {
                return false; // Tiene un divisor, no es primo
            }
        }
        return true; // Es primo
    }

    /**
     * Muestra todos los números primos hasta un límite dado
     * y para cada primo, la cantidad de números compuestos menores que él.
     *
     * @param limite Número límite.
     */
    public static void mostrarPrimosYCompuestos(int limite) {
        int cantidadCompuestos = 0;

        System.out.println("Números primos y sus compuestos menores:");
        for (int i = 2; i <= limite; i++) {
            if (esPrimo(i)) {
                System.out.println("Primo: " + i + ", Compuestos menores: " + cantidadCompuestos);
            } else {
                cantidadCompuestos++;
            }
        }
    }
}
