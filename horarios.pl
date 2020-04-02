/*	El programa para armar horarios posibles		*/
/*	no debe permitir que las materias se repitan	*/
/*	o se traslapen							  		*/

/*	Hechos	*/

clase(bd,lunes,hoario(7,9)).
clase(so,lunes,hoario(7,9)).
clase(redes,lunes,hoario(7,9)).
clase(ia,lunes,hoario(7,9)).
clase(sisExp,lunes,hoario(7,9)).
clase(progGrafica,lunes,hoario(7,9)).
clase(seguridad,lunes,hoario(7,9)).

clase(bd,lunes,hoario(8,10)).
clase(so,lunes,hoario(8,10)).
clase(redes,lunes,hoario(8,10)).
clase(ia,lunes,hoario(8,10)).
clase(sisExp,lunes,hoario(8,10)).
clase(progGrafica,lunes,hoario(8,10)).
clase(seguridad,lunes,hoario(8,10)).

clase(bd,lunes,hoario(9,11)).
clase(so,lunes,hoario(9,11)).
clase(redes,lunes,hoario(9,11)).
clase(ia,lunes,hoario(9,11)).
clase(sisExp,lunes,hoario(9,11)).
clase(progGrafica,lunes,hoario(9,11)).
clase(seguridad,lunes,hoario(9,11)).

clase(bd,lunes,hoario(10,12)).
clase(so,lunes,hoario(10,12)).
clase(redes,lunes,hoario(10,12)).
clase(ia,lunes,hoario(10,12)).
clase(sisExp,lunes,hoario(10,12)).
clase(progGrafica,lunes,hoario(10,12)).
clase(seguridad,lunes,hoario(10,12)).

clase(bd,martes,hoario(7,9)).
clase(so,martes,hoario(7,9)).
clase(redes,martes,hoario(7,9)).
clase(ia,martes,hoario(7,9)).
clase(sisExp,martes,hoario(7,9)).
clase(progGrafica,martes,hoario(7,9)).
clase(seguridad,martes,hoario(7,9)).

clase(bd,martes,hoario(8,10)).
clase(so,martes,hoario(8,10)).
clase(redes,martes,hoario(8,10)).
clase(ia,martes,hoario(8,10)).
clase(sisExp,martes,hoario(8,10)).
clase(progGrafica,martes,hoario(8,10)).
clase(seguridad,martes,hoario(8,10)).

clase(bd,martes,hoario(9,11)).
clase(so,martes,hoario(9,11)).
clase(redes,martes,hoario(9,11)).
clase(ia,martes,hoario(9,11)).
clase(sisExp,martes,hoario(9,11)).
clase(progGrafica,martes,hoario(9,11)).
clase(seguridad,martes,hoario(9,11)).

clase(bd,martes,hoario(10,12)).
clase(so,martes,hoario(10,12)).
clase(redes,martes,hoario(10,12)).
clase(ia,martes,hoario(10,12)).
clase(sisExp,martes,hoario(10,12)).
clase(progGrafica,martes,hoario(10,12)).
clase(seguridad,martes,hoario(10,12)).

/*	clase(materia, dia, horaInicio, horaFin)	*/

/*	Reglas */
mayorIgual(horario(HoraA, _), horario(_, HoraB)):-
	HoraA >= HoraB.

inscribeMateria(Materia):-
    clase(Materia, Dia, Horario).















