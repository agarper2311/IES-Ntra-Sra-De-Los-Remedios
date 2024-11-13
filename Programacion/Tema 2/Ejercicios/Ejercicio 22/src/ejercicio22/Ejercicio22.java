package ejercicio22;
import java.util.Scanner;
/**
 *
 * @author agarc
 */
public class Ejercicio22 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner (System.in);
        
        
        int numero;

        do {
            // Pedir un número al usuario
            System.out.print("Introduce un número (0 para salir): ");
            numero = sc.nextInt();
            
            // Si el número es 0, terminamos el bucle
            if (numero == 0) {
                System.out.println("Programa terminado.");
                break;
            }
            
            // Determinar si el número es par o impar
            if (numero % 2 == 0) {
                System.out.println("El número " + numero + " es par.");
            } else {
                System.out.println("El número " + numero + " es impar.");
            }
            
            // Determinar si el número es positivo o negativo
            if (numero > 0) {
                System.out.println("El número " + numero + " es positivo.");
            } else {
                System.out.println("El número " + numero + " es negativo.");
            }
            
            // Calcular el cuadrado del número
            int cuadrado = numero * numero;
            System.out.println("El cuadrado de " + numero + " es " + cuadrado + ".");
            
            System.out.println(); // Línea en blanco para separar cada ciclo

        } while (numero != 0);
    }
    
}
