package org.example;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        String alumno1 = "Angel Garcia";
        String alumno2 = "Jaime Gomez";
        String alumno3 = "Alvaro Perez";
        String opcionAutores = "";
        int num = 0;
        int opcion;


        Scanner sc = new Scanner(System.in);

        System.out.println("Bienvenido a la calculadora");
        System.out.println("¿Quieres saber quienes son sus autores?");
        opcionAutores = sc.nextLine();

        if (opcionAutores.equalsIgnoreCase("si")) {
            System.out.println("""
                    Calculadora realizada por:
                    """ + alumno1 + ", " + alumno2 + ", " + alumno3);

        } else if (opcionAutores.equalsIgnoreCase("no")) {
            System.out.println("Tampoco es obligatorio saber quienes son sus autores");

        } else {
            System.out.println("Opcion incorrecta, por favor, escriba si o no");
        }


        while (true) {
            System.out.println("*--------------------------------------*");
            System.out.println("|        Operaciones Básicas           |");
            System.out.println("*--------------------------------------*");
            System.out.println("| 1. Suma.  2. Resta  3. Multiplicar   |");
            System.out.println("|            4. Dividir                |");
            System.out.println("*--------------------------------------*");
            System.out.println("");
            System.out.println("*--------------------------------------*");
            System.out.println("|      Operaciones Intermedias         |");
            System.out.println("*--------------------------------------*");
            System.out.println("|   5. MCM  6. MCD  7. Raiz Cuadrada   |");
            System.out.println("*--------------------------------------*");
            System.out.println("");
            System.out.println("*--------------------------------------*");
            System.out.println("|       Operaciones Avanzadas          |");
            System.out.println("*--------------------------------------*");
            System.out.println("| 8.Calc Area Circ   9.Calc Area Trgl  |");
            System.out.println("| 10. Calc Area Rctgl  11.Suc Fibonnaci|");
            System.out.println("*--------------------------------------*");
            System.out.println("|               0. Salir               |");
            System.out.println("*--------------------------------------*");
            opcion = sc.nextInt();
            break;


        }
        switch (opcion) {
            case 1:
                sumar(num);
                break;
            case 2:
                restar();
                break;
            case 3:
                multiplicar();
                break;
            case 4:
                dividir();
                break;
            case 5:
                raizCuadrada();
                break;
            case 6:
                mcd();
                break;
            case 7:
                mcm();
                break;
            case 8:
                areaCirc();
                break;
            case 9:
                areaTrgl();
                break;
            case 10:
                areaRctgl();
                break;
            case 11:
                sucFibonnaci();
        }


    }


    public static void sumar(int num) {
    }

    public static void restar() {
    }

    public static void dividir() {
    }

    public static void multiplicar() {

    }

    public static void raizCuadrada() {

    }

    public static void mcd() {

    }

    public static void mcm() {

    }

    public static void areaCirc() {

    }

    public static void areaTrgl() {

    }

    public static void areaRctgl() {

    }

    public static void sucFibonnaci() {

    }
}