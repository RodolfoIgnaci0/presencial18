# presencial18

Actividad 018 - Objetos
Para poder realizar este actividad debes haber realizado los cursos previos junto con los videos online correspondientes a la experiencia 9.
Crea una carpeta y guarda cada archivo .rb con el número de la pregunta, siguiendo las instrucciones de manera local con Sublime o Atom.
Luego guarda los cambios y súbelos a tu repositorio de Github.
Luego de pusheados los últimos cambios, sube el link de Github en el desafío de la sección correspondiente en la plataforma.
Ejercicio 1: Objetos y archivos.
El archivo casino.txt contiene las recaudaciones de 4 días de un casino separadas por mesa de juego.
 Mesa 1, 90, 60, 10, 30
 Mesa 2, 40, 34, 77, 11
 Mesa 3, 34, 86, 55, 91
 Mesa 4, 67, 93, 43, 87
Se pide:
Crear una clase Table cuyo constructor reciba el nombre de la mesa y las recaudaciones correspondientes de cada día.
Crear un método que permita leer el archivo e instanciar una mesa por línea del archivo.
Crear métodos que permitan:
Conocer el mayor valor recaudado, y a que mesa y día corresponde. Calcular el promedio total de lo recaudado por todas las mesas en todos los
           
 días.
Ejercicio 2: Objetos y archivos.
El archivo cursos.txt contiene las fechas de inicio y término de cursos dictados por Desafío Latam durante el año 2017, con la siguiente estructura:
 Front-end, 2017-05-21, 2017-08-10
 Wordpress, 2017-04-12, 2017-11-04
 Full-stack, 2017-07-09, 2017-12-29
 Android, 2017-05-17, 2017-08-13
 Marketing, 2017-03-14, 2017-10-20
Se pide:
Crear una clase Course cuyo constructor reciba el nombre y las fechas de inicio y termino de cada curso.
Crear un método que permita leer el archivo e instanciar una mesa por línea del archivo.
Crear métodos que permitan:
Saber qué cursos comienzan previo a una fecha entregada como argumento.
Saber qué cursos finalizan posterior a una fecha entregada como argumento.
En ambos el métodos argumento por defecto debe ser la fecha de hoy.
Ambos métodos deben levantar una excepción si la fecha recibida es >= 2018-01-01.
       
Ejercicio 3: Ruleta.
Se tiene un array que contiene los números de una ruleta.
 r = (1..10).to_a
Se pide:
Crear una clase llamada Roulette.
Crear un método de instancia llamado play que reciba como argumento un número al cual se está apostando. Luego debe tomar un valor -del array- al azar y compararlo con el número al cual se apostó.
Crear un método de instancia que:
Debe almacenar el número generado al azar en un archivo llamado
roulette_history.txt
Si el número al cual se apostó corresponde al generado al azar entonces, debe además almacenar ese número en un archivo llamado winners.txt
Crear un método que lea el archivo rouletter_history.txt y retorne el valor que más ha generado la ruleta históricamente.
