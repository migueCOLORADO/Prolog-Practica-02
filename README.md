# Gestor de Ventas de Vehiculos
## Introduccion
Esta es una practica estudiantil, cuyo objetivo es crear, a travez del Lenguaje de Programacion Logica Prolog, un sistema para la gestion del inventario de vehiculos de un concesionario.  

## Descripcion


## Funcionalidades


## Base de Conocimiento
[BaseConocimientoAutos.pl]

## Recomendaciones
Para garantizar una buena ejecucion y prueba de calidad de nuestro sistema, hemos diseñado una serie de pasos a ejecutar que consideramos adecuados. Estos pasos los hemos seccionado en las siguientes dos fases:

### Ejecucion
Aquí es indispensable contar con un entorno de desarrollo o un compilador virtual compatible con Prolog. Nosotros recomendamos utilizar:

1. **SWI-Prolog**: Este es un IDE gratuito enfocado en Prolog. [Link: https://www.swi-prolog.org/.].

2. **Online Prolog Compiler**: Este es un compilador virtual de Prolog brindado por tutorialspoint [Link: https://acortar.link/mEiVrp]

### Prueba de Calidad
Para realizar las pruebas pertinentes de la funcionalidad del sistema, nosotros recomendamos que al realizar las consultas, para cada prueba, se tome en cuenta el siguiente tipo de consulta:

1. **Prueba 01**
    findall(Reference, (vehicle(toyota, Reference, suv, Price, _), Price < 30000), Results).
    bagof(Reference, (vehicle(toyota, Reference, suv, Price, _), Price < 30000), Results).

2. **Prueba 02**
    bagof(vehicle(Type, Year, Reference), (vehicle(ford, Reference, Type, _, Year)), GroupedVehicles).

3. **Prueba 03**
    findall(Price,(vehicle(_, _, sedan, Price, _)), SedanPrices),aggregate_all(sum(Price), member(Price, SedanPrices), TotalValue),Tope = 500000,(TotalValue =< Tope -> TotalValue = TotalValue ; TotalValue = Tope).

## Video Presentacion del Codigo
[]

## Link del Repositorio
[https://github.com/migueCOLORADO/Prolog-Practica-02.git]


## Autores
Miguel Angel Colorado Castaño
Samuel Correa Velasquez
