package org.example;

import java.util.Scanner;

/**
 * Angel Garcia Perez
 *
 * Proporciona una función que reciba dos números enteros
 * como parámetros y devuelva el mayor de ellos.
 *
 * El programa debe pedir los números al usuario y mostrar el resultado.
 *
 * Debes utilizar el operador ternario.
 */

public class Ejercicio3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Introduce el primer número entero: ");
        int num1 = sc.nextInt();

        System.out.print("Introduce el segundo número entero: ");
        int num2 = sc.nextInt();

        int mayor = obtenerMayor(num1, num2);

        System.out.println("El mayor de los dos números es: " + mayor);

    }

    /**
     * Devuelve el mayor de dos números enteros utilizando el operador ternario.
     *
     * @param a Primer número entero.
     * @param b Segundo número entero.
     * @return El mayor de los dos números.
     */
    public static int obtenerMayor(int a, int b) {
        return (a > b) ? a : b;
    }
}
