package ejercicio10;
import java.util.Scanner;
/**
 *
 * @author agarc
 */
public class Ejercicio10 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner (System.in);
        
        // Precio por kilo
        final double PRECIO_MANZANAS = 2.35;
        final double PRECIO_PERAS = 1.95;
        
        // Variables para almacenar las ventas de cada semestre
        double ventasManzanasSemestre1, ventasManzanasSemestre2;
        double ventasPerasSemestre1, ventasPerasSemestre2;
        
        // Solicitar al usuario las ventas de manzanas y peras para cada semestre
        System.out.println("Introduzca la venta de manzanas en kilos del primer trimestre: ");
        ventasManzanasSemestre1 = sc.nextDouble();
        
        System.out.println("Introduzca la venta de manzanas en kilos del segundo trimestre: ");
        ventasManzanasSemestre2 = sc.nextDouble();
        
        System.out.println("Introduzca las ventas de peras en kilos del primer semestre: ");
        ventasPerasSemestre1 = sc.nextDouble();
        
        System.out.println("Introduzca las ventas de peras en kilos del segundo semestre: ");
        ventasPerasSemestre2 = sc.nextDouble();
        
        // Calculamos los beneficios totales
        double totalManzanas = (ventasManzanasSemestre1 + ventasManzanasSemestre2) * PRECIO_MANZANAS;
        double totalPeras = (ventasPerasSemestre1 + ventasPerasSemestre2) * PRECIO_PERAS;
        double totalBeneficio = totalManzanas + totalPeras;
        
        // Mostramos el resultado
        System.out.println("El beneficio total anual es de " + totalBeneficio);
    }
    
}
