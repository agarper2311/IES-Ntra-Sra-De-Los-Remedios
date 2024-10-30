package ejercicio12;
import java.util.Scanner;
/**
 *
 * @author agarc
 */
public class Ejercicio12 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Ingrese un número: ");
        double numero = sc.nextDouble();

        // Usando Math.abs
        double valorAbsoluto = Math.abs(numero);

        System.out.println("El valor absoluto (usando Math.abs) es: " + valorAbsoluto);

    }
    
}
