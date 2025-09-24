%El ejercicio dice: "Dadas la siguiente base de conocimiento: "

byCar(auckland,hamilton). %se puede ir de auckland a hamilton por auto
byCar(hamilton,raglan). %se puede ir de hamilton a raglan por auto
byCar(valmont,saarbruecken). %se puede ir de valmont a saarbruecken por auto
byCar(valmont,metz). %se puede ir de valmont a metz por auto

byTrain(metz,frankfurt). %se puede ir de metz a frankfurt por tren
byTrain(saarbruecken,frankfurt). %se puede ir de saarbruecken a frankfurt por tren
byTrain(metz,paris). %se puede ir de metz a paris por tren
byTrain(saarbruecken,paris). %se puede ir de saarbruecken a paris por tren

byPlane(frankfurt,bangkok). %se puede ir de frankfurt a bangkok por avion
byPlane(frankfurt,singapore). %se puede ir de frankfurt a singapore por avion
byPlane(paris,losAngeles). %se puede ir de paris a los angeles por avion
byPlane(bangkok,auckland). %se puede ir de bangkok a auckland por avion
byPlane(singapore,auckland). %se puede ir de singapore a auckland por avion
byPlane(losAngeles,auckland). %se puede ir de los angeles a auckland por avion

%"Escribir un predicado travel que permita averiguar si es posible o no viajar 
%de una ciudad a otra, ya sea en uno o más tramos."

%Resolucion: Nuestros casos base serían:
travel(X,Y) :- byCar(X,Y).
travel(X,Y) :- byTrain(X,Y).
travel(X,Y) :- byPlane(X,Y).

%Ahora, tenemos que pensar como llegar a los casos base. Tenemos que encontrar con que ciudad podemos hacer
%combinación para llegar a la ciudad Y. Si usamos recursión nos queda:

travel(X,Y) :- travel(X,Z), travel(Z, Y).
