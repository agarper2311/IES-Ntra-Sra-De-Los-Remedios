Algoritmo calculadoraObtenerResultadoRedondeadoODecimales
    Definir num1, num2, resultado, option, redondeo Como Real
    Escribir "Menú de selección: "
    Escribir "1. Suma"
    Escribir "2. Resta"
    Escribir "3. Multiplicar"
    Escribir "4. Dividir"
    Escribir "5. Raiz Cuadrada"
    Escribir "6. MCD"
    Leer option
    
    Escribir "¿Desea el resultado redondeado? (1 para sí, 0 para no): "
    Leer redondeo
	
    Segun option Hacer
        1:
            resultado <- realizarSuma(num1, num2)
        2:
            resultado <- realizarResta(num1, num2)
        3:
            resultado <- realizarMultiplicar(num1, num2)
        4:
            resultado <- realizarDivision(num1, num2)
        5:
            resultado <- realizarRaizCuadrada(num1)
        6:
            resultado <- calcularMCD(num1, num2)
    FinSegun
	
    mostrarResultado(resultado, redondeo)
FinAlgoritmo

Funcion resultado <- realizarSuma(num1, num2)
    Escribir "Introduzca el primer número y después el segundo: "
    Leer num1
    Leer num2
    resultado <- num1 + num2
FinFuncion

Funcion resultado <- realizarResta(num1, num2)
    Escribir "Introduzca el primer número y después el segundo: "
    Leer num1
    Leer num2
    resultado <- num1 - num2
FinFuncion

Funcion resultado <- realizarMultiplicar(num1, num2)
    Escribir "Introduzca el primer número y después el segundo: "
    Leer num1
    Leer num2
    resultado <- num1 * num2
FinFuncion

Funcion resultado <- realizarDivision(num1, num2)
    Escribir "Introduzca el primer número y después el segundo: "
    Leer num1
    Leer num2
    resultado <- num1 / num2
FinFuncion

Funcion resultado <- realizarRaizCuadrada(num1)
    Escribir "Introduzca un número: "
    Leer num1
    resultado <- RAIZ(num1)
FinFuncion

Funcion resultado <- calcularMCD(num1, num2)
    Escribir "Introduzca el primer número y después el segundo: "
    Leer num1
    Leer num2
    Mientras num2 <> 0 Hacer
        Si num1 > num2 Entonces
            num1 <- num1 - num2
        SiNo
            num2 <- num2 - num1
        FinSi
    FinMientras
    resultado <- num1
FinFuncion

Funcion mostrarResultado(resultado, redondeo)
    Si redondeo = 1 Entonces
        resultado <- TRUNC(resultado + 0.5)
    FinSi
    Escribir "El resultado es: ", resultado
FinFuncion
