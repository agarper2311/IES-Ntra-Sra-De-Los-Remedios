package ejercicio16;
import java.util.Scanner;
/**
 *
 * @author Angel
 */
public class Ejercicio16 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Scanner sc = new Scanner (System.in);
        
        int entradaUsuario;
        
        System.out.println("Bienvenido, vamos a averiguar si su número es par"
                + " o impar");
        
        System.out.println("Introduzca un número: ");
        entradaUsuario = sc.nextInt();
        
        if (entradaUsuario % 2 == 0){
            System.out.println("El número " + entradaUsuario + " es par" );
        }else{
            System.out.println("El número " + entradaUsuario + " es impar");
        }
    }
    
}
