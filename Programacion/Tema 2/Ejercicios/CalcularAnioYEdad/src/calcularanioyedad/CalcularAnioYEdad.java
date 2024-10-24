package calcularanioyedad;

import java.util.Scanner;

/**
 *
 * @author agarc
 */
public class CalcularAnioYEdad {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner sc = new Scanner(System.in);
        
        int anioActual;
        int anioNacimiento;
        int edad;
        
        System.out.println("Introduzca su año de nacimiento: ");
        
        anioNacimiento = sc.nextInt();
        
        System.out.println("Introduzca el año actual: ");
        
        anioActual = sc.nextInt();
        
        edad = anioActual - anioNacimiento;
        
        System.out.println("Usted tiene: "+edad+" años");
        
    }
    
}
