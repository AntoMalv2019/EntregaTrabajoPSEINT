Subproceso MuestraPromedio(alumno, mate, bio, ing, pro)
	Limpiar Pantalla;
	Escribir "El alumno ", alumno, " tiene los siguientes promedios:";
	Escribir  "El promedio de Mátematica es: ", mate;
	Escribir  "El promedio de Biología es: ", bio;
	Escribir  "El promedio de Ingles es: ", ing;
	Escribir  "El promedio de Programación es: ", pro;
FinSubProceso

Subproceso prom <- Promedio(materia)
	Definir prom como Real;
	Definir notas, k como Numero;
	Escribir "Ingrese las notas de ", materia;
	Dimension notas(3);
	Para k <- 0 Hasta 2 con Paso 1 Hacer
		Escribir "Cargar examen: ", (k +1);
		Leer notas[k]; 
	FinPara
	prom <- redon((notas[0] + notas[1] + notas[2])/3);
FinSubProceso

SubProceso PromediosDeMaterias(alumno)
	Definir matematica, biologia, ingles, programacion Como Caracter;
	Definir nota1, i, nota2, nota3 Como Numero;
	Definir prom_mate, prom_bio, prom_ing, prom_pro Como Real;
	
	matematica <- "Matemática";
	biologia <- "Biología";
	ingles <- "Ingles";
	programacion <- "Programación";
	
	Escribir "Se van a cargar las notas de ", alumno;
	
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		
		// Bloque matematica
		Si i=0 Entonces
			//			Escribir "Cargar notas de: ", matematica;
			//			Escribir "Cargar examen: 1";
			//			Leer nota1;
			//			Escribir "Cargar examen: 2";
			//			Leer nota2;
			//			Escribir "Cargar examen: 3";
			//			Leer nota3;
			//			prom_mate <- (nota1 + nota2 + nota3) / 3;
			prom_mate <- Promedio(matematica);
			Limpiar Pantalla;
			Escribir "El promedio de ", matematica, " es ", prom_mate;
		FinSi
		// Bloque biologia
		Si i=1 Entonces
			//			Escribir "Cargar notas de: ", biologia;
			//			Escribir "Cargar examen: 1";
			//			Leer nota1;
			//			Escribir "Cargar examen: 2";
			//			Leer nota2;
			//			Escribir "Cargar examen: 3";
			//			Leer nota3;
			//			prom_bio <- (nota1 + nota2 + nota3) / 3;
			Limpiar Pantalla;
			prom_bio <- Promedio(biologia);
			Limpiar Pantalla;
			Escribir "El promedio de ", biologia, " es ", prom_bio;
		FinSi
		Si i=2 Entonces
			//			Escribir "Cargar notas de: ", ingles;
			//			Escribir "Cargar examen: 1";
			//			Leer nota1;
			//			Escribir "Cargar examen: 2";
			//			Leer nota2;
			//			Escribir "Cargar examen: 3";
			//			Leer nota3;
			//			prom_ing <- (nota1 + nota2 + nota3) / 3;
			Limpiar Pantalla;
			prom_ing <- Promedio(ingles);
			Limpiar Pantalla;
			Escribir "El promedio de ", ingles, " es ", prom_ing;
		FinSi
		// Bloque programacion
		Si i=3 Entonces
			//			Escribir "Cargar notas de: ", programacion;
			//			Escribir "Cargar examen: 1";
			//			Leer nota1;
			//			Escribir "Cargar examen: 2";
			//			Leer nota2;
			//			Escribir "Cargar examen: 3";
			//			Leer nota3;
			//			prom_pro <- (nota1 + nota2 + nota3) / 3;
			Limpiar Pantalla;
			prom_pro <- Promedio(programacion);
			Limpiar Pantalla;
			Escribir "El promedio de ", programacion, " es ", prom_pro;
		FinSi
	FinPara
	//	Limpiar Pantalla;
	//	Escribir alumno;
	//	Escribir matematica;
	//	Escribir "Promedio: ", prom_mate;
	//	Escribir biologia;
	//	Escribir "Promedio: ", prom_bio;
	//	Escribir ingles;
	//	Escribir "Promedio: ", prom_ing;
	//	Escribir programacion;
	//	Escribir "Promedio: ", prom_pro;
	MuestraPromedio(alumno, prom_mate, prom_bio, prom_ing, prom_pro);
FinSubProceso

Proceso Materias
	Definir grupo_alumnos Como Caracter;
	Dimension grupo_alumnos(3);
	Definir alumno, alumno2 Como Caracter;
//	Definir matematica, biologia, ingles, programacion Como Caracter;
//	Definir nota1, i, nota2, nota3 Como Numero;
//	Definir prom_mate, prom_bio, prom_ing, prom_pro Como Real;
	alumno <- "Pablo";
	alumno2 <- "Florenia";
	PromediosDeMaterias(alumno);
	PromediosDeMaterias(alumno2);
	

FinProceso
