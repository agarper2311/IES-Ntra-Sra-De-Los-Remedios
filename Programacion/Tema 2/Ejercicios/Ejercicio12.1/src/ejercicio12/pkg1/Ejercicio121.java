package ejercicio12.pkg1;
import java.util.Scanner;
/**
 *
 * @author agarc
 */
public class Ejercicio121 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Ingrese un número: ");
        double numero = sc.nextDouble();

        // Usando el operador ternario
        double valorAbsoluto = (numero < 0) ? -numero : numero;

        System.out.println("El valor absoluto (usando operador ternario) es: " + valorAbsoluto);

    }
    
}
