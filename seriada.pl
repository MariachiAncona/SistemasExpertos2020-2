antec(a,b).
antec(b,c).
antec(c,d).
antec(d,e).
antec(e,f).

/*Reglas*/
esAntecedente(X,Y):- antec(X,Y).
esAntecedente(X,Y):- antec(X,Z),esAntecedente(Z,Y).



/*Seriadas*/
seriada(calcDif,calcInt).
seriada(calcInt,calcVect).
seriada(calcVect,ecDif).
seriada(ecDif,matAvanz).
seriada(matAvanz,procSenales).

/*Reglas*/

/*Caso base*/
esSeriada(M1,M2):-seriada(M1,M2).

esSeriada(X,Y):-seriada(Z,Y),seriada(X,Z).
