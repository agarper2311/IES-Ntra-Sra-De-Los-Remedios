package ejercicio20;
import java.util.Scanner;

/**
 *
 * @author agarc
 */
public class Ejercicio20 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        // Pedir la nota al usuario
        System.out.print("Introduce una nota entera de 0 a 10: ");
        int nota = sc.nextInt();

        // Verificar la nota y mostrar el resultado correspondiente
        if (nota >= 0 && nota <= 4) {
            System.out.println("Insuficiente");
        } else if (nota == 5) {
            System.out.println("Suficiente");
        } else if (nota == 6) {
            System.out.println("Bien");
        } else if (nota == 7 || nota == 8) {
            System.out.println("Notable");
        } else if (nota == 9 || nota == 10) {
            System.out.println("Sobresaliente");
        } else {
            System.out.println("Nota inválida. Introduce un número entre 0 y 10.");
        }
        
    }
    
}
