package ejercicio15;
import java.util.Scanner;
/**
 *
 * @author agarc
 */
public class Ejercicio15 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
         // Pedir al usuario un número decimal
        System.out.println("Introduce un número decimal: ");
        double numeroDecimal = sc.nextDouble();
        
        // Redondear el número al entero más cercano
        long numeroRedondeado = Math.round(numeroDecimal);
        
        // Mostrar el resultado
        System.out.println("Número redondeado: " + numeroRedondeado);
        
    }
    
}
