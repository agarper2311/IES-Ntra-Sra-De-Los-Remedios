package ejercicio.pkg31;

import java.util.Scanner;

public class Ejercicio31 {

    public static void main(String[] args) {
        // Invocación con un valor literal
        variosSaludos(3);

        // Invocación con un valor leído por teclado
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduce el número de saludos: ");
        int numero = sc.nextInt();
        variosSaludos(numero);

        // Invocación con la variable n
        int n = 5;
        variosSaludos(n);
        
        sc.close();
    }

    // Método que imprime "Hola" tantas veces como indique n
    public static void variosSaludos(int n) {
        for (int i = 0; i < n; i++) {
            System.out.println("Hola");
        }
    }
}
