package ejercicio19;
import java.util.Scanner;
/**
 *
 * @author agarc
 */
public class Ejercicio19 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int num1;
        int num2;
        int num3;
        
        Scanner sc = new Scanner (System.in);
        
        System.out.println("´Vamos a averiguar qué número es mayor");
        System.out.println("Introduzca el primer número: ");
        num1 = sc.nextInt();
        
        System.out.println("Introduzca el segundo número: ");
        num2 = sc.nextInt();
        
        System.out.println("Introduzca el tercer número: ");
        num3 = sc.nextInt();
        
         System.out.println("Los números de mayor a menor son:");
        

        if (num1 >= num2 && num1 >= num3) {
            if (num2 >= num3) {
                System.out.println(num1 + ", " + num2 + ", " + num3);
            } else {
                System.out.println(num1 + ", " + num3 + ", " + num2);
            }
        } else if (num2 >= num1 && num2 >= num3) {
            if (num1 >= num3) {
                System.out.println(num2 + ", " + num1 + ", " + num3);
            } else {
                System.out.println(num2 + ", " + num3 + ", " + num1);
            }
        } else {
            if (num1 >= num2) {
                System.out.println(num3 + ", " + num1 + ", " + num2);
            } else {
                System.out.println(num3 + ", " + num2 + ", " + num1);
            }
        }
        
        
    }
    
}
