pertenece(paris,francia).
pertenece(londres,inglaterra).
pertenece(liverpool,inglaterra).
pertenece(tokio,japon).
pertenece(hiroshima,japon).
pertenece(bogota,colombia).
pertenece(medellin,colombia).
pertenece(lima,peru).
pertenece(quito,ecuador).
pertenece(francia,europa).
pertenece(inglaterra,europa).
pertenece(japon,asia).
pertenece(colombia,america).
pertenece(peru,america).
pertenece(ecuador,america).

/*	Reglas	*/

estaEn(C1,C2) :- pertenece(C1,C2).
estaEn(X,Y) :- pertenece(X,Z),estaEn(Z,Y).