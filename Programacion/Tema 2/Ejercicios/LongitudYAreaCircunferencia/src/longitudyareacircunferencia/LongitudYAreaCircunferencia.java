package longitudyareacircunferencia;

import java.util.Scanner;

public class LongitudYAreaCircunferencia {

    public static void main(String[] args) {
        double radio;
        double resultado;
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Introduzca el radio de la circunferencia: ");
        radio = sc.nextDouble();
        
        System.out.println("¿Qué cálculo desea realizar?");
        System.out.println("1. Longitud de la circunferencia");
        System.out.println("2. Área de la circunferencia");
        int opcion = sc.nextInt();
        
        if (opcion == 1) {
            // Fórmula para la longitud: 2 * π * radio
            resultado = 2 * Math.PI * radio;
            System.out.println("La longitud de la circunferencia es: " + resultado);
        } else if (opcion == 2) {
            // Fórmula para el área: π * radio^2
            resultado = Math.PI * Math.pow(radio, 2);
            System.out.println("El área de la circunferencia es: " + resultado);
        } else {
            System.out.println("Opción no válida. Por favor, elija 1 o 2.");
        }
        
        sc.close();
    }
}
