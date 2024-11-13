package ejercicio.pkg28;
import java.util.Scanner;
/**
 *
 * @author agarc
 */
public class Ejercicio28 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Pedir al usuario que introduzca un número
        System.out.print("Introduce un número para calcular su factorial: ");
        int numero = sc.nextInt();
        
        // Verificar que el número sea no negativo
        if (numero < 0) {
            System.out.println("El factorial no está definido para números negativos.");
        } else {
            int factorial = 1;

            // Calcular el factorial usando un bucle for
            for (int i = 1; i <= numero; i++) {
                factorial *= i;  // Multiplicar el resultado por i en cada iteración
            }

            // Mostrar el resultado
            System.out.println("El factorial de " + numero + " es: " + factorial);
        }
    }
    
}
