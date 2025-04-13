# Gestor de Ventas de Vehiculos
## Introduccion
<div style = "text-align: justify;">
Esta es una práctica estudiantil, cuyo objetivo es crear, a través del Lenguaje de Programación Lógica Prolog, un sistema para la gestión del inventario de vehículos de un concesionario.  

## Descripción
El programa está construido alrededor de un archivo de Prolog (BaseConocimientoAutos.pl) en el que se establecieron una serie de hechos (el inventario del concesionario) y de funcionalidades que le permiten al concesionario administrar su inventario de vehículos. 

Al ser cargada la base de conocimiento en un IDE o un compilador virtual, en la consola aparecerá algo como "?-", que indica que se espera una consulta del usuario; allí, usando un tipo específico de consulta, el concesionario podrá verificar o hacer preguntas respecto a su inventario. Para más información ir a: [Recomendaciones](#recomendaciones)

Finalmente, luego de realizar la consulta, Prolog retornará al concesionario la información que haya encontrado sobre lo solicitado, como lo puede ser un listado o un valor booleano (Verdadero o Falso).

## Funcionalidades

1. Filtrar por tipo y presupuesto (Determina por referencia si el presupuesto del cliente permite la compra del vehículo).

2. Listar los vehículos por marca (Busca todos los vehículos de una marca y los almacena en una lista).

3. Generar reporte (Crea un reporte de vehículos que están dentro del presupuesto del cliente).  

## Recomendaciones
Para garantizar una buena ejecución y prueba de calidad de nuestro sistema, hemos diseñado una serie de pasos a ejecutar que consideramos adecuados. Estos pasos los hemos seccionado en las siguientes dos fases:

### Ejecución
Aquí es indispensable contar con un entorno de desarrollo o un compilador virtual compatible con Prolog. Nosotros recomendamos utilizar:

1. **SWI-Prolog**: Este es un IDE gratuito enfocado en Prolog. 
- [Link - Descarga](https://www.swi-prolog.org/.)
- [Tutorial - Uso](https://youtu.be/hRqA1vO9nxE)

2. **Online Prolog Compiler**: Este es un compilador virtual de Prolog brindado por tutorialspoint.
- [Link - Compilador](https://acortar.link/mEiVrp)

### Prueba de Calidad
Para realizar las pruebas pertinentes de la funcionalidad del sistema, nosotros recomendamos que, al realizar las consultas, para cada prueba se tome el tipo de consulta que preparamos en este archivo: [Tipo - Consultas](Programas/ConsultasProlog.txt)

**Nota Importante**: Antes de dar clic a la tecla "Enter", después de haber escrito la consulta, ***VERIFIQUE*** que haya un "." seguido del último carácter de la consulta; sin esto, Prolog no procesará la consulta e inmediatamente estará a la espera de una nueva. 

## Video Presentación del Código
[]

## Link del Repositorio
[Gestor - Concesionario](https://github.com/migueCOLORADO/Prolog-Practica-02.git)

## Autores
Miguel Ángel Colorado Castaño <br>
Samuel Correa Velásquez
</div>