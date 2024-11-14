package ejercicio.pkg33;
import java.util.Scanner;

/**
 *
 * @author agarc
 */
public class Ejercicio33 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Introduce el primer número: ");
        int num1 = sc.nextInt();
        
        System.out.print("Introduce el segundo número: ");
        int num2 = sc.nextInt();
        
        System.out.print("Introduce el tercer número: ");
        int num3 = sc.nextInt();
        
        // Llamada a la función sobrecargada para tres números y almacenamiento del resultado
        int max = calcularNumMayor(num1, num2, num3);
        
        // Imprime el valor devuelto por la función
        System.out.println("El número mayor es: " + max);
    }
    
    // Función original que recibe dos enteros y devuelve el mayor de ambos
    public static int calcularNumMayor(int n1, int n2) {
        return (n1 > n2) ? n1 : n2;
    }
    
    // Función sobrecargada que recibe tres enteros y devuelve el mayor de los tres
    public static int calcularNumMayor(int n1, int n2, int n3) {
        // Utiliza la función calcularNumMayor con dos números para simplificar la comparación
        int maxDos = calcularNumMayor(n1, n2);
        return calcularNumMayor(maxDos, n3);
    }
    
}
