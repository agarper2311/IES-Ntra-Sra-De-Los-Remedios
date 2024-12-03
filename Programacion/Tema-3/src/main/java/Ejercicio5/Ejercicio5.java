package Ejercicio5;

/**
 * Crea un método que reciba un array de enteros y devuelva un entero
 * con la suma de todos los números del array. Invoca este método
 * desde un main e imprime el resultado.
 *
 * Nota: tendrás que inicializar el array en el main antes de invocar al
 * método.
 */

public class Ejercicio5 {
    // Método que recibe un array de enteros y devuelve la suma de sus elementos
    public static int sumarElementos(int[] array) {
        int suma = 0;
        for (int numero : array) { // Recorre el array con un bucle for-each
            suma += numero; // Suma cada elemento al total
        }
        return suma; // Devuelve la suma total
    }

    public static void main(String[] args) {
        // Inicializar el array en el método main
        int[] numeros = {10, 20, 30, 40, 50}; // Array de ejemplo

        // Invocar el método para calcular la suma
        int sumaTotal = sumarElementos(numeros);

        // Imprimir el resultado
        System.out.println("La suma de los elementos del array es: " + sumaTotal);
    }
}
