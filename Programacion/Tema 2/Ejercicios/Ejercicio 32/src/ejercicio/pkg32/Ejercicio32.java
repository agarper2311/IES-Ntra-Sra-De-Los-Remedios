package ejercicio.pkg32;

import java.util.Scanner;

/**
 *
 * @author agarc
 */
public class Ejercicio32 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Introduce el primer número: ");
        int num1 = sc.nextInt();
        
        System.out.print("Introduce el segundo número: ");
        int num2 = sc.nextInt();
        
        // Llamada a la función calcularNumMayor y almacenamiento del resultado
        int max = calcularNumMayor(num1, num2);
        
        // Imprime el valor devuelto por la función
        System.out.println("El número mayor es: " + max);
    }
    
    // Función que recibe dos enteros y devuelve el mayor de ambos
    public static int calcularNumMayor(int n1, int n2) {
        return (n1 > n2) ? n1 : n2;
    }
}
