package ejercicio.pkg29;

/**
 *
 * @author agarc
 */
public class Ejercicio29 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // Bucle externo para cada tabla de multiplicar del 1 al 10
        for (int i = 1; i <= 10; i++) {
            System.out.println("Tabla del " + i + ":");
            
            // Bucle interno para cada multiplicación dentro de la tabla
            for (int j = 1; j <= 10; j++) {
                System.out.println(i + " x " + j + " = " + (i * j));
            }
            
            System.out.println(); // Línea en blanco para separar cada tabla
        }
    }
    
}
