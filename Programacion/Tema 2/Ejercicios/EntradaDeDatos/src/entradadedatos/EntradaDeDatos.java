package entradadedatos;

import java.util.Scanner;

/**
 *
 * @author agarc
 */
public class EntradaDeDatos {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Introduzca un número:  ");
        int num = sc.nextInt();
        
        System.out.println("Usted ha introducido el número: "+num );
                
        
    }
    
}