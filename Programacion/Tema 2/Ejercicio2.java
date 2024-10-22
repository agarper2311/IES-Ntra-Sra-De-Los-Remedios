public class Ejercicio2 {
    public static void main (String[] args) {
        boolean logico;
        char caracter;
        byte enteroByte;
        short enteroShort;
        int enteroInt;
        long enteroLong;
        float real;
        double realLargo;

	//Declaración Constantes
	final int anyo = 2024;

        // Inicialización de variables
        logico = true;  // Corrección aquí
        caracter = 'a';
        enteroByte = 1;
        enteroShort = 1;
        enteroInt = 2000;
        enteroLong = 10333L;  // Mejor práctica -> Le agregamos una L para que lo tome como tipo Long
        real = 2.56F;  // Mejor práctica -> Le agregamos una F para que lo tome como tipo Float

        realLargo = 3.1415926535;

	//Desbordar una variable
	//enteroByte = 235;
	enteroByte = 127;
	
	// Mostrar una variable
	System.out.println("El valor de la variable lógica es: "+ logico);

	
    }
}
