package mayordeedadtruefalse;

import java.util.Scanner;

/**
 *
 * @author agarc
 */
public class MayorDeEdadTrueFalse {

    public static void main(String[] args) {
        boolean esMayorDeEdad; // Cambié el nombre de la variable para mayor claridad
        int edad; // Cambié el tipo de la variable a int para almacenar la edad correctamente
        
        Scanner sc = new Scanner(System.in);
        System.out.println("Introduzca su edad: ");
        edad = sc.nextInt(); // Cambié a nextInt() para leer un número entero
        
        // Verificar si la edad es mayor o igual a 18
        if (edad >= 18) {
            esMayorDeEdad = true;
        } else {
            esMayorDeEdad = false;
        }
        if(esMayorDeEdad == true){
            System.out.println("Eres Mayor de edad");
        }else if(esMayorDeEdad == false){
            System.out.println("Eres Menor de edad");
        }else{
            System.out.println("Introduzca una edad");
        }
        
        sc.close(); 
    }
}
