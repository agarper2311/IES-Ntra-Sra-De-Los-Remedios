package ejercicio.pkg24;
import java.util.Scanner;
/**
 *
 * @author agarc
 */
public class Ejercicio24 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int edad;
        int edadMaxima = Integer.MIN_VALUE;
        int edadMinima = Integer.MAX_VALUE;

        System.out.println("Introduce las edades de los alumnos (escribe -1 para terminar):");

        while (true) {
            System.out.print("Edad: ");
            edad = sc.nextInt();

            if (edad == -1) {
                break;  // Salir del bucle si el usuario ingresa -1
            }

            // Actualizar la edad máxima y mínima
            if (edad > edadMaxima) {
                edadMaxima = edad;
            }
            if (edad < edadMinima) {
                edadMinima = edad;
            }
        }

        if (edadMaxima == Integer.MIN_VALUE && edadMinima == Integer.MAX_VALUE) {
            System.out.println("No se introdujeron edades.");
        } else {
            System.out.println("Edad máxima: " + edadMaxima);
            System.out.println("Edad mínima: " + edadMinima);
        }

    }
    
}
