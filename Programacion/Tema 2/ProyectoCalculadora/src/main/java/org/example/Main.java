package org.example;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        String alumno1 = "Angel Garcia";
        String alumno2 = "Jaime Gomez";
        String alumno3 = "Alvaro Perez";

        Scanner sc = new Scanner(System.in);
        System.out.println("Bienvenido a la calculadora");
        System.out.println("¿Quieres saber quiénes son sus autores? (si/no)");
        String opcionAutores = sc.nextLine();

        if (opcionAutores.equalsIgnoreCase("si")) {
            System.out.println("""
                    Calculadora realizada por:
                    """ + alumno1 + ", " + alumno2 + ", " + alumno3);
        } else if (opcionAutores.equalsIgnoreCase("no")) {
            System.out.println("No es obligatorio saber quiénes son los autores.");
        } else {
            System.out.println("Opción incorrecta. Por favor, escribe 'si' o 'no'.");
        }

        while (true) {
            mostrarMenu();

            int opcion;
            try {
                opcion = sc.nextInt();
            } catch (Exception e) {
                System.out.println("Entrada inválida. Por favor, ingrese un número.");
                sc.nextLine(); // Limpiar el buffer
                continue;
            }

            if (opcion == 0) {
                System.out.println("Saliendo de la calculadora. ¡Hasta luego!");
                break;
            }

            switch (opcion) {
                case 1 -> sumar();
                case 2 -> restar();
                case 3 -> multiplicar();
                case 4 -> dividir();
                case 5 -> mcm();
                case 6 -> mcd();
                case 7 -> raizCuadrada();
                case 8 -> areaCirc();
                case 9 -> areaTrgl();
                case 10 -> areaRctgl();
                case 11 -> sucFibonacci();
                case 12 -> tabla();
                default -> System.out.println("Opción inválida. Por favor, selecciona una opción válida.");
            }
        }
    }

    public static void mostrarMenu() {
        System.out.println("*--------------------------------------*");
        System.out.println("|        Operaciones Básicas           |");
        System.out.println("*--------------------------------------*");
        System.out.println("| 1. Suma  2. Resta  3. Multiplicar    |");
        System.out.println("|           4. Dividir                 |");
        System.out.println("*--------------------------------------*");
        System.out.println("");
        System.out.println("*--------------------------------------*");
        System.out.println("|      Operaciones Intermedias         |");
        System.out.println("*--------------------------------------*");
        System.out.println("| 5. MCM  6. MCD  7. Raiz Cuadrada     |");
        System.out.println("*--------------------------------------*");
        System.out.println("");
        System.out.println("*--------------------------------------*");
        System.out.println("|       Operaciones Avanzadas          |");
        System.out.println("*--------------------------------------*");
        System.out.println("| 8. Area Circ  9. Area Trgl  10. Area |");
        System.out.println("| Rectangulo  11. Suc. Fibonacci       |");
        System.out.println("| 12.Tabla multiplica                  |");
        System.out.println("*--------------------------------------*");
        System.out.println("|               0. Salir               |");
        System.out.println("*--------------------------------------*");
        System.out.print("Elige una opción: ");
    }

    public static void sumar() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese el primer número: ");
        double a = sc.nextDouble();
        System.out.print("Ingrese el segundo número: ");
        double b = sc.nextDouble();
        System.out.println("El resultado de la suma es: " + (a + b));
    }

    public static void restar() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese el primer número: ");
        double a = sc.nextDouble();
        System.out.print("Ingrese el segundo número: ");
        double b = sc.nextDouble();
        System.out.println("El resultado de la resta es: " + (a - b));
    }

    public static void multiplicar() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese el primer número: ");
        double a = sc.nextDouble();
        System.out.print("Ingrese el segundo número: ");
        double b = sc.nextDouble();
        System.out.println("El resultado de la multiplicación es: " + (a * b));
    }

    public static void dividir() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese el numerador: ");
        double a = sc.nextDouble();
        System.out.print("Ingrese el denominador: ");
        double b = sc.nextDouble();
        if (b != 0) {
            System.out.println("El resultado de la división es: " + (a / b));
        } else {
            System.out.println("Error: No se puede dividir entre cero.");
        }
    }

    public static void raizCuadrada() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese un número: ");
        double a = sc.nextDouble();
        if (a >= 0) {
            System.out.println("La raíz cuadrada de " + a + " es: " + Math.sqrt(a));
        } else {
            System.out.println("Error: No se puede calcular la raíz cuadrada de un número negativo.");
        }
    }

    public static void mcd() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese el primer número: ");
        int a = sc.nextInt();
        System.out.print("Ingrese el segundo número: ");
        int b = sc.nextInt();
        while (b != 0) {
            int temp = b;
            b = a % b;
            a = temp;
        }
        System.out.println("El MCD es: " + a);
    }

    public static void mcm() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese el primer número: ");
        int a = sc.nextInt();
        System.out.print("Ingrese el segundo número: ");
        int b = sc.nextInt();
        int mcm = (a * b) / mcd(a, b);
        System.out.println("El MCM es: " + mcm);
    }

    private static int mcd(int a, int b) {
        while (b != 0) {
            int temp = b;
            b = a % b;
            a = temp;
        }
        return a;
    }

    public static void areaCirc() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese el radio del círculo: ");
        double radio = sc.nextDouble();
        System.out.println("El área del círculo es: " + (Math.PI * radio * radio));
    }

    public static void areaTrgl() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese la base del triángulo: ");
        double base = sc.nextDouble();
        System.out.print("Ingrese la altura del triángulo: ");
        double altura = sc.nextDouble();
        System.out.println("El área del triángulo es: " + (0.5 * base * altura));
    }

    public static void areaRctgl() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese la base del rectángulo: ");
        double base = sc.nextDouble();
        System.out.print("Ingrese la altura del rectángulo: ");
        double altura = sc.nextDouble();
        System.out.println("El área del rectángulo es: " + (base * altura));
    }

    public static void sucFibonacci() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese la cantidad de términos de Fibonacci: ");
        int n = sc.nextInt();
        int a = 0, b = 1;
        System.out.print("Serie de Fibonacci: " + a + " " + b);
        for (int i = 2; i < n; i++) {
            int temp = a + b;
            System.out.print(" " + temp);
            a = b;
            b = temp;
        }
        System.out.println();
    }

    public static void tabla() {
        Scanner scanner = new Scanner(System.in);
        String num;
        int x;

        do {
            System.out.println("Escriba 'salir' si quiere terminar el programa o introduzca el número:");
            num = scanner.nextLine();

            if (num.equals("salir")) {
                System.out.println("salió");
            } else {
                
                    x = Integer.parseInt(num);
                    for (int i = 0; i <= 10; i++) {
                        int result = x * i;
                        System.out.println(i + " * " + x + " = " + result);
                    }
                
            }
        } while (!num.equals("salir"));


}
}
