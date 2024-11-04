package ejercicio.pkg17;
import java.util.Scanner;
/**
 *
 * @author Angel
 */
public class Ejercicio17 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner (System.in);
        
        int num1, num2;
        
        System.out.println("Vamos a comparar 2 números para saber cual es mayor"
                + " o si son iguales (Deben ser números sin decimales): ");
        
        System.out.println("Introduzca el primer número: ");
        num1 = sc.nextInt();
        
        System.out.println("Introduzca el segundo número: ");
        num2 = sc.nextInt();
        
        
        if (num1 > num2){
            System.out.println("El número "+ num1 +" es mayor que "+ num2);
        }else if (num2 > num1){
            System.out.println("El número "+ num2 +" es mayor que "+ num1);
        }else{
            System.out.println("Los números introducidos son iguales");
        }
      
        
        
    }
    
}
