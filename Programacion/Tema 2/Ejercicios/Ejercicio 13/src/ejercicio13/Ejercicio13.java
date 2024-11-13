package ejercicio13;

/**
 *
 * @author agarc
 */
public class Ejercicio13 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // 1.
        System.out.println(10 + 5 * 2 > 20 && 4 == 4); // False
        
        // 2. 
        System.out.println(!(7 + 3 > 10) || 3 * 2 <= 6); // True
        
        // 3.
        System.out.println(10 / 2 + 3 * 5 == 19 && true); // False
        
        // 4. Declaración de variable x y cálculo fuera de println
        int x = 5;
        x += 3 * 2;
        System.out.println(x); // 11
        
        // 5. Declaración de variable b y cálculo fuera de println
        boolean b = false;
        b = !b || 7 % 2 == 1;
        System.out.println(b); // True
    }
    
}
