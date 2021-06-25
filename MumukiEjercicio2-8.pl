%PUNTO 2.8

%esNum/1
esNum(fractional).
%operacionNum/1
operacionNum(sumar).
operacionNum(restar).
operacionNum(multiplicar).
%operacionShow/1
operacionShow(mostrar).
%esFractional/1
esFractional(fractional).
esFractional(num).
%operacionFractional/1
operacionFractional(dividir).


%puedoUsar/1
puedoUsar(Operacion, num):-
    operacionNum(Operacion).
%puedoUsar(restar, num).
%puedoUsar(multiplicar, num).
puedoUsar(dividir, fractional).
puedoUsar(mostrar, show).
puedoUsar(Operacion, fractional):-
    operacionNum(Operacion).
puedoUsar(Operacion, int):-
    operacionNum(Operacion).
puedoUsar(Operacion, int):-
    operacionShow(Operacion).
puedoUsar(Operacion, show):-
    operacionShow(Operacion).
puedoUsar(mostrar, float).
puedoUsar(mostrar, double).
puedoUsar(Operacion, float):-
    operacionNum(Operacion).
puedoUsar(Operacion, float):-
    operacionFractional(Operacion).
puedoUsar(Operacion, double):-
    operacionNum(Operacion).
puedoUsar(Operacion, double):-
    operacionFractional(Operacion).
puedoUsar(Operacion, bool):-
    operacionShow(Operacion).
