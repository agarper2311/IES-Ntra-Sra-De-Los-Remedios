package ejercicio.pkg30;
import java.util.Scanner;
/**
 *
 * @author agarc
 */
public class Ejercicio30 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Pedir al usuario que introduzca un número
        System.out.print("Introduce un número para el tamaño del triángulo: ");
        int n = sc.nextInt();

        // Dibujar el triángulo
        for (int i = n; i > 0; i--) {  // Comienza desde n y decrece hasta 1
            for (int j = 0; j < i; j++) {  // Imprime i asteriscos en cada línea
                System.out.print("* ");
            }
            System.out.println();  // Nueva línea después de cada fila
        }
    }
    
}
