package ejercicio9;

import java.util.Scanner;

/**
 *
 * @author agarc
 */
public class Ejercicio9 {

    public static void main(String[] args) {
        boolean estaLloviendo;
        boolean tareasRealizadas;
        boolean necesitaIrBiblioteca;

        Scanner sc = new Scanner(System.in);

        System.out.println("Bienvenido a solicitar permiso para salir.");
        System.out.println("¿Está lloviendo? (true/false)");
        estaLloviendo = sc.nextBoolean(); 
        System.out.println("¿Has hecho todas las tareas? (true/false)");
        tareasRealizadas = sc.nextBoolean(); 
        System.out.println("¿Necesitas ir a la biblioteca? (true/false)");
        necesitaIrBiblioteca = sc.nextBoolean(); 
        
        // Verificar las condiciones
        if (!estaLloviendo && tareasRealizadas) { 
            System.out.println("Puedes salir.");
        } else if (necesitaIrBiblioteca) {
            System.out.println("Puedes salir a la biblioteca.");
        } else {
            System.out.println("No puedes salir.");
        }

        sc.close(); 
    }
}
