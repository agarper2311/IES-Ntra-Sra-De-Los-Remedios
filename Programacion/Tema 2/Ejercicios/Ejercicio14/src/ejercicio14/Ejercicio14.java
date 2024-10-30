package ejercicio14;
import java.util.Scanner;
/**
 *
 * @author agarc
 */
public class Ejercicio14 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        /*
        //Conversión implícita
        System.out.println("Conversión implícita");
        int a = 1;
        double x = a;
        
        System.out.println(x);
        
        //Conversión explícita
        System.out.println("Conversión explícita");
        double y = 2.6;
        int b = (int)y;
        System.out.println(b);
         */
        
        double notaPrimerTrimestre;
        double notaSegundoTrimestre;
        double notaTercerTrimestre;
        double resultadoConDecimales;
        int resultadoSinDecimales;
        long resultadoRedondeado;

        Scanner sc = new Scanner(System.in);

        System.out.println("Introduzca la nota del primer trimestre:");
        notaPrimerTrimestre = sc.nextDouble();

        System.out.println("Introduzca la nota del segundo trimestre:");
        notaSegundoTrimestre = sc.nextDouble();

        System.out.println("Introduzca la nota del tercer trimestre:");
        notaTercerTrimestre = sc.nextDouble();

        // Cálculo de la media con decimales
        resultadoConDecimales = (notaPrimerTrimestre + notaSegundoTrimestre + notaTercerTrimestre) / 3;

        // Conversión a entero sin decimales
        resultadoSinDecimales = (int) resultadoConDecimales;

        // Redondeo de la media
        resultadoRedondeado = Math.round(resultadoConDecimales);

        System.out.println("El resultado con decimales es: " + resultadoConDecimales);
        System.out.println("El resultado sin decimales es: " + resultadoSinDecimales);
        System.out.println("El resultado redondeado es: " + resultadoRedondeado);
    
    }
    
}
