package Ejercicio2;

/**
 * Construye ua tabla de 10 elementos del tipo que desees. Declara
 * diferentes variables de tabla que referenciarán la tabla creada.
 *
 * Comprueba, imprimiendo por pantalla, que todas las variables
 * contienen la misma referencia.
 */

public class Ejercicio2 {
    public static void main(String[] args) {
        // Crear una tabla de 10 elementos (tipo int)
        int[] originalArray = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

        // Declarar variables de tabla que referencian la misma tabla
        int[] refArray1 = originalArray;
        int[] refArray2 = originalArray;
        int[] refArray3 = originalArray;

        // Imprimir referencias por pantalla para verificar que son iguales
        System.out.println("Referencia de originalArray: " + originalArray);
        System.out.println("Referencia de refArray1: " + refArray1);
        System.out.println("Referencia de refArray2: " + refArray2);
        System.out.println("Referencia de refArray3: " + refArray3);

        // Verificar que apuntan al mismo objeto comparando referencias
        System.out.println("¿refArray1 y originalArray son iguales? " + (refArray1 == originalArray));
        System.out.println("¿refArray2 y originalArray son iguales? " + (refArray2 == originalArray));
        System.out.println("¿refArray3 y originalArray son iguales? " + (refArray3 == originalArray));
    }
}
