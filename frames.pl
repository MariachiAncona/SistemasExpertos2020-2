/*	HECHOS	*/

esUn(animal, serVivo).
esUn(vegetal, serVivo).
esUn(vertebrado, animal).
esUn(invertebrado, animal).
esUn(mamifero, vertebrado).
esUn( carnivoro, mamifero).
esUn(perro, carnivoro).
esUn(spike, perro).
/************************/
esUn(objeto, materia).
esUn(mueble, objeto).
esUn(silla, mueble).

atrib(serVivo, respira).
atrib(animal, seMueve).
atrib(gato, garras).
atrib(vertebrado, colVertebral).
atrib(mamifero, amamantado).
atrib(carnivoro, comeCarne).
atrib(perro, ladra).
atrib(spike, colorCafe).
/***********************/

atrib(objeto, masa).
atrib(mueble, dimensiones).
atrib(silla, patas).

/*	REGLAS	*/


isA(A,B):-
	esUn(A,B).
isA(A,B):- 
	esUn(A,X),
	isA(X,B).

tieneAtrib(Atrib, Clase):- 
	atrib(Clase, Atrib),!.
tieneAtrib(Atrib, Clase):- 
	isA(Clase, ClaseX),
	tieneAtrib(Atrib, ClaseX).




   


