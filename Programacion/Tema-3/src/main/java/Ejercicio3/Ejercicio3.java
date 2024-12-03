package Ejercicio3;

/**
 * Crea una tabla como la de la imagen que representa los sueldos de
 * los empleados de una empresa.
 * Auméntales el sueldo un 10% a cada empleado de forma que el array de sueldos quede actualizado.
 */

public class Ejercicio3 {
    public static void main(String[] args) {
// Crear una tabla con los sueldos iniciales
        int[] sueldos = {1800, 1200, 2000, 1200, 900};

        // Mostrar los sueldos iniciales
        System.out.println("Sueldos iniciales:");
        for (int i = 0; i < sueldos.length; i++) {
            System.out.println("Empleado " + i + ": " + sueldos[i]);
        }

        // Incrementar los sueldos en un 10%
        for (int i = 0; i < sueldos.length; i++) {
            sueldos[i] += sueldos[i] * 0.1; // Incremento del 10%
        }

        // Mostrar los sueldos actualizados
        System.out.println("\nSueldos actualizados:");
        for (int i = 0; i < sueldos.length; i++) {
            System.out.println("Empleado " + i + ": " + sueldos[i]);
        }
    }
}