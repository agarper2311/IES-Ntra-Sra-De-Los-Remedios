package ejercicio21;
import java.util.Scanner;

/**
 *
 * @author agarc
 */
public class Ejercicio21 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
         Scanner sc = new Scanner(System.in);
        
        // Pedir el número del mes al usuario
        System.out.print("Introduce el número del mes (1-12): ");
        int mes = sc.nextInt();

        // Declarar la variable que almacenará la cantidad de días
        int dias;
        
        // Usar una estructura switch para determinar los días según el mes
        switch (mes) {
            case 1, 3, 5, 7, 8, 10, 12 -> {
                dias = 31;
                System.out.println("El mes " + mes + " tiene " + dias + " días.");
            }
            case 4, 6, 9, 11 -> {
                dias = 30;
                System.out.println("El mes " + mes + " tiene " + dias + " días.");
                       }
            case 2 ->  {
                System.out.print("¿Es un año bisiesto? (true/false): ");
                boolean bisiesto = sc.nextBoolean();
                dias = (bisiesto) ? 29 : 28;
                System.out.println("El mes " + mes + " tiene " + dias + " días.");
                       }
            default -> System.out.println("Número de mes inválido. Introduce un número entre 1 y 12.");
                   }

    }
    
}
