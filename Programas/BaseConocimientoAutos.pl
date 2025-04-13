% -----------------------------------------------
% Base de Conocimiento | Concesionario
% -----------------------------------------------
% Hechos | Catalogo de Vehiculos
% -----------------------------------------------
vehicle(toyota, rav4, suv, 28000, 2022).
vehicle(toyota, corrolla, suv, 22000, 2024).
vehicle(dodge, charger, sedan, 1000, 1980).
vehicle(bmw, m4, coupe, 20567, 1980).
vehicle(bmw, x5, suv, 60000, 2021).
vehicle(ford, mustang, sport, 45000, 2013).
vehicle(ford, ranger, pickup, 80000, 2026).
vehicle(chevrolet, apache, pickup, 1200, 1960).
vehicle(honda, civic, sedan, 25000, 2022).
vehicle(chevrolet, silverado, pickup, 35000, 2021).
vehicle(nissan, rogue, suv, 27000, 2023).
vehicle(audi, a4, sedan, 40000, 2022).
vehicle(jeep, wrangler, suv, 32000, 2023).

% -----------------------------------------------
% Metapredicados | Funcionalidades
% -----------------------------------------------
% -----------------------------------------------
% Metapredicado | Filtrar por tipo y presupuesto
% -----------------------------------------------
meet_budget(Reference, BudgetMax) :-        % Regla | Determina por la referencia, si el presupuesto del cliente permite la compra del vehiculo 
    vehicle(_,Reference,_,Price,_),         % Busca si el vehiculo existe en la base de conocimiento | Devuelve true o false
    Price =< BudgetMax.                     % Verifica si el precio del vehiculo es menor o igual al presupuesto | Devuelve true o false
	
% -----------------------------------------------
% Metapredicado | Listar vehiculos por marca
% -----------------------------------------------
vehicles_by_brand(Brand,ListOfReferences) :-
    findall(Reference,vehicle(Brand,Reference,_,_,_),ListOfReferences).     % Busca todos los vehiculos de la marca y los almacena en una lista
	

% -----------------------------------------------
% Metapredicado | Generar reporte de vehiculos
% -----------------------------------------------
generate_report(Brand, Type, Budget, report(Vehicles, TotalValue)) :-
    findall(vehicle(Brand, Reference, Type, Price, Year),
        ( vehicle(Brand, Reference, Type, Price, Year), Price =< Budget ), Vehicles),

    aggregate_all(sum(Price), ( member(vehicle(Brand, _, Type, Price, _), Vehicles) ), Sum),
    ( Sum > 1000000 -> TotalValue = 1000000 ; TotalValue = Sum ).
	