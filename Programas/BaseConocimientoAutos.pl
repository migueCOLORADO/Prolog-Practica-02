% --- Vehicle Catalog ---

vehicle(toyota, rav4, suv, 28000, 2022).
vehicle(toyota, corrolla, suv, 22000, 2024).
vehicle(dodge, charger, sedan, 1000, 1980).
vehicle(bmw, m4, coupe, 20567, 1980).
vehicle(bmw, x5, suv, 60000, 2021).
vehicle(ford, mustang, sport, 45000, 2013).
vehicle(ford, ranger, pickup, 80000, 2026).
vehicle(chevrolet, apache, pickup, 1200, 1960).


% --- Functionalities ---

% --- Filter by Type and budget ---

meet_budget(Reference, BudgetMax) :-
    vehicle(_,Reference,_,Price,_),
    Price =< BudgetMax.
	
% --- List of Vehicles by Brand ---
	
vehicles_by_brand(Brand,ListOfReferences) :-
    findall(Reference,vehicle(Brand,Reference,_,_,_),ListOfReferences).
	
% --- Report Generate ---

generate_report(Brand, Type, Budget, report(Vehicles, TotalValue)) :-
    findall(vehicle(Brand, Reference, Type, Price, Year),
            ( vehicle(Brand, Reference, Type, Price, Year),
              Price =< Budget ),
            Vehicles),
    aggregate_all(sum(Price),
                  ( member(vehicle(Brand, _, Type, Price, _), Vehicles) ),
                  Sum),
    ( Sum > 1000000 -> TotalValue = 1000000 ; TotalValue = Sum ).
	