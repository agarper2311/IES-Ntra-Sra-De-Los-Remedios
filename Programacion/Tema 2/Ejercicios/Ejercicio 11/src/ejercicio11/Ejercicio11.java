package ejercicio11;
import java.util.Scanner;
/**
 *
 * @author agarc
 */
public class Ejercicio11 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int num1;
        int num2;
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Calcular que número es mayor");
        System.out.println("Introduzca el primer número");
        num1 = sc.nextInt();
        
        System.out.println("Introduzca el segundo número: ");
        num2 = sc.nextInt();
        
        if (num1 > num2){
            System.out.println("El número "+num1+" es mayor que "+num2);
        }else{
            System.out.println("El número "+num2+" es mayor que "+num1);
        }
    }
    
}
