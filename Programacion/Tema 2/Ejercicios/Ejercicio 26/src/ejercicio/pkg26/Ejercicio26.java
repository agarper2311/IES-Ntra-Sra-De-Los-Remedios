package ejercicio.pkg26;
import java.util.Scanner;
/**
 *
 * @author agarc
 */
public class Ejercicio26 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       Scanner sc = new Scanner(System.in);

        // Pedir al usuario un número
        System.out.print("Introduce un número: ");
        int numero = sc.nextInt();

        // Mostrar "Eco..." tantas veces como el número introducido
        for (int i = 0; i < numero; i++) {
            System.out.println("Eco...");
        }

    }
    
}
