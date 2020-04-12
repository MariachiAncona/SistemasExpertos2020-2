/*	El programa para armar horarios posibles		*/
/*	no debe permitir que las materias se repitan	*/
/*	o se traslapen							  		*/

/*	Hechos	*/

clase(bd,lunes,7,9).
clase(so,lunes,7,9).
clase(redes,lunes,7,9).
clase(ia,lunes,7,9).
clase(sisExp,lunes,7,9).
clase(progGrafica,lunes,7,9).
clase(seguridad,lunes,7,9).

clase(bd,lunes,8,10).
clase(so,lunes,8,10).
clase(redes,lunes,8,10).
clase(ia,lunes,8,10).
clase(sisExp,lunes,8,10).
clase(progGrafica,lunes,8,10).
clase(seguridad,lunes,8,10).

clase(bd,lunes,9,11).
clase(so,lunes,9,11).
clase(redes,lunes,9,11).
clase(ia,lunes,9,11).
clase(sisExp,lunes,9,11).
clase(progGrafica,lunes,9,11).
clase(seguridad,lunes,9,11).

clase(bd,lunes,10,12).
clase(so,lunes,10,12).
clase(redes,lunes,10,12).
clase(ia,lunes,10,12).
clase(sisExp,lunes,10,12).
clase(progGrafica,lunes,10,12).
clase(seguridad,lunes,10,12).

clase(bd,martes,7,9).
clase(so,martes,7,9).
clase(redes,martes,7,9).
clase(ia,martes,7,9).
clase(sisExp,martes,7,9).
clase(progGrafica,martes,7,9).
clase(seguridad,martes,7,9).

clase(bd,martes,8,10).
clase(so,martes,8,10).
clase(redes,martes,8,10).
clase(ia,martes,8,10).
clase(sisExp,martes,8,10).
clase(progGrafica,martes,8,10).
clase(seguridad,martes,8,10).

clase(bd,martes,9,11).
clase(so,martes,9,11).
clase(redes,martes,9,11).
clase(ia,martes,9,11).
clase(sisExp,martes,9,11).
clase(progGrafica,martes,9,11).
clase(seguridad,martes,9,11).

clase(bd,martes,10,12).
clase(so,martes,10,12).
clase(redes,martes,10,12).
clase(ia,martes,10,12).
clase(sisExp,martes,10,12).
clase(progGrafica,martes,10,12).
clase(seguridad,martes,10,12).

/*	clase(materia, dia, horaInicio, horaFin)	*/

/*	Reglas */

traslape(clase(Materia1,Dia1,Inicio1,Fin1), clase(Materia2,Dia2,Inicio2,Fin2)):-
                            clase(Materia1, Dia1, Inicio1, Fin1),
                            clase(Materia2, Dia2, Inicio2, Fin2),
                            Materia1 \== Materia2,
                            Inicio2 >= Fin1,
                            Dia1 == Dia2.

traslapeDistintoDia(clase(Materia1,Dia1,Inicio1,Fin1), clase(Materia2,Dia2,Inicio2,Fin2)):- 
                            clase(Materia1, Dia1, Inicio1, Fin1),
                            clase(Materia2, Dia2, Inicio2, Fin2),
                            Materia1 \== Materia2,
                            Fin1 >= Inicio2,
                            Dia1 \== Dia2.

inscribeMismoDia(clase(Materia1,Dia1,Inicio1,Fin1), clase(Materia2,Dia2,Inicio2,Fin2), clase(Materia3,Dia3,Inicio3,Fin3)):-
                            traslape(clase(Materia1,Dia1,Inicio1,Fin1), clase(Materia2,Dia2,Inicio2,Fin2)),
                            traslape(clase(Materia1,Dia1,Inicio1,Fin1), clase(Materia3,Dia3,Inicio3,Fin3)),
                            traslape(clase(Materia2,Dia2,Inicio2,Fin2), clase(Materia3,Dia3,Inicio3,Fin3)).

inscribeDistintoDia(clase(Materia1,Dia1,Inicio1,Fin1), clase(Materia2,Dia2,Inicio2,Fin2), clase(Materia3,Dia3,Inicio3,Fin3)):-
                            traslapeDistintoDia(clase(Materia1,Dia1,Inicio1,Fin1), clase(Materia2,Dia2,Inicio2,Fin2)),
                            traslapeDistintoDia(clase(Materia1,Dia1,Inicio1,Fin1), clase(Materia3,Dia3,Inicio3,Fin3)),
                            traslapeDistintoDia(clase(Materia2,Dia2,Inicio2,Fin2), clase(Materia3,Dia3,Inicio3,Fin3)).

inscribe(clase(Materia1,Dia1,Inicio1,Fin1), clase(Materia2,Dia2,Inicio2,Fin2), clase(Materia3,Dia3,Inicio3,Fin3)):-
                            inscribeMismoDia(clase(Materia1,Dia1,Inicio1,Fin1), clase(Materia2,Dia2,Inicio2,Fin2), clase(Materia3,Dia3,Inicio3,Fin3));
                            inscribeDistintoDia(clase(Materia1,Dia1,Inicio1,Fin1), clase(Materia2,Dia2,Inicio2,Fin2), clase(Materia3,Dia3,Inicio3,Fin3)).



                            














