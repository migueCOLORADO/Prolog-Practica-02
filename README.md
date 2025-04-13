# Gestor de Ventas de Vehiculos
## Introduccion
Esta es una practica estudiantil, cuyo objetivo es crear, a travez del Lenguaje de Programacion Logica Prolog, un sistema para la gestion del inventario de vehiculos de un concesionario.  

## Descripcion
El programa esta construido al rededor de un archivo de prolog (BaseConocimientoAutos.pl) en el que se establecieron una serie de hechos (El inventario del consecionario), y de funcionalidades que le permiten al consecionario administrar su inventariado de vehiculos. 

Al ser cargada la base de conocimiento en un IDE o un compilador virtual, en la consola aparecera algo como "?-", que indica que se espera una consulta del usuario; allí, usando un tipo especifico de consulta, el consecionario podra verificar o hacer preguntas respecto a su inventario. Para mas informacion ir a: [Recomendaciones](#recomendaciones).

Finalmente, luego de realizar la consulta, prolog retornara al consecionario la informacion que haya encontrado sobre lo solicitado, como lo puede ser un listado o valor booleano (Verdadero o Falso).

## Funcionalidades
1. Filtrar por tipo y presupuesto (Determina por referencia, si el presupuesto del cliente permite la compra del vehiculo).

2. Listar los vehiculos por marca (Busca todos los vehiculos de una marca y los almacena en una lista).

3. Generar reporte (Crea un reporte de vehiculos que estan dentro del presupuesto del cliente).  

## Recomendaciones
Para garantizar una buena ejecucion y prueba de calidad de nuestro sistema, hemos diseñado una serie de pasos a ejecutar que consideramos adecuados. Estos pasos los hemos seccionado en las siguientes dos fases:

### Ejecucion
Aquí es indispensable contar con un entorno de desarrollo o un compilador virtual compatible con Prolog. Nosotros recomendamos utilizar:

1. **SWI-Prolog**: Este es un IDE gratuito enfocado en Prolog. 
- [Descargar](https://www.swi-prolog.org/.).
- [Tutorial - Uso](https://youtu.be/hRqA1vO9nxE)

2. **Online Prolog Compiler**: Este es un compilador virtual de Prolog brindado por tutorialspoint.
- [Compilador - Link](https://acortar.link/mEiVrp)

### Prueba de Calidad
Para realizar las pruebas pertinentes de la funcionalidad del sistema, nosotros recomendamos que al realizar las consultas, para cada prueba, se tome el tipo de consulta que preparamos en este archivo: [Base de Conocimiento - Vehículos](Programas/ConsultasProlog.txt)

**Nota Importante**: Antes de dar click a la tecla "Enter", despues de haber escrito la consulta, *VERIFIQUE* que haya un "." seguido del ultimo caracter de la consulta; sin esto Prolog no procesara la consulta, e inmediatamente estara a la espera de una nueva. 

## Video Presentacion del Codigo
[]

## Link del Repositorio
[https://github.com/migueCOLORADO/Prolog-Practica-02.git]

## Autores
Miguel Angel Colorado Castaño <br>
Samuel Correa Velasquez
