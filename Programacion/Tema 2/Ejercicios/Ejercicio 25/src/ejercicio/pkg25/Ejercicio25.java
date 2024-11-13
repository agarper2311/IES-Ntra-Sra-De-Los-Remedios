package ejercicio.pkg25;
import java.util.Scanner;
import java.util.Random;
/**
 *
 * @author agarc
 */
public class Ejercicio25 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Random random = new Random();
        
        int correctas = 0;  // Contador de respuestas correctas
        
        while (true) {
            // Generar dos números aleatorios entre 1 y 100
            int numero1 = random.nextInt(100) + 1;
            int numero2 = random.nextInt(100) + 1;
            int sumaCorrecta = numero1 + numero2;
            
            // Pedir al jugador que introduzca la respuesta
            System.out.println("¿Cuánto es " + numero1 + " + " + numero2 + "?");
            System.out.print("Respuesta: ");
            int respuesta = sc.nextInt();
            
            // Comprobar si la respuesta es correcta
            if (respuesta == sumaCorrecta) {
                System.out.println("¡Correcto!");
                correctas++;  // Incrementar el contador de respuestas correctas
            } else {
                System.out.println("Respuesta incorrecta. El juego ha terminado.");
                System.out.println("Número de respuestas correctas: " + correctas);
                break;  // Terminar el juego
            }
        }
    }
    
}
