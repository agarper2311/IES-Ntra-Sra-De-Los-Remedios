package calcularanio;

import java.util.Scanner;
/**
 *
 * @author agarc
 */
public class CalcularAnio {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        int edad;
        
        System.out.println("Introduzca su edad: ");
        edad = sc.nextInt();
        
        edad ++;
        
        System.out.println("El año que viene tendrás: "+edad);
    }
    
}
