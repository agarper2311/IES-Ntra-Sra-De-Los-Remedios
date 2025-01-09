package Ejercicio6;

import java.util.Scanner;

/**
 * Diseñar un programa que solicite al usuario que introduzca por teclado
 * 5 números decimales. A continuación, mostrar los números en el mismo
 * orden que se han introducido.
 */
public class Ejercicio6 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Crear un array para almacenar los números
        double[] numeros = new double[5];

        // Solicitar los números al usuario
        for (int i = 0; i < numeros.length; i++) {
            System.out.print("Ingrese el número decimal " + (i + 1) + ": ");
            numeros[i] = sc.nextDouble();
        }

        // Mostrar los números en el mismo orden
        System.out.println("\nLos números introducidos son:");
        for (double numero : numeros) {
            System.out.println(numero);
        }

    }
}
