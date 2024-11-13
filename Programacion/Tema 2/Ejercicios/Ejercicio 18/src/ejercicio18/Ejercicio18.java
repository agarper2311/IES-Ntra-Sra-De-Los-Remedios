package ejercicio18;
import java.util.Scanner;
/**
 *
 * @author Angel
 */
public class Ejercicio18 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner (System.in);
        
        double numeroUsuario;
        
        System.out.println("Introduce un número decimal");
        numeroUsuario = sc.nextDouble();
        
        if (Math.abs(numeroUsuario) > 0 && Math.abs(numeroUsuario) < 1) {
            System.out.println("El número " + numeroUsuario + " es un número casi-cero.");
        } else {
            System.out.println("El número " + numeroUsuario + " no es un número casi-cero.");
        }

        
    }
    
}
