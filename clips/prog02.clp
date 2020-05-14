(deftemplate alumno (slot nCta) (slot nombre) (slot carr))
(list-deftemplate) ;lista de templates
(ppdeftemplate alumno) ;pretty print el template indicado
; (undeftemplate alumno) eliminar definición del template
; (undeftemplate *) elimina todos los templates

; Definición de hechos
(assert (alumno (nCta 1) (nombre "Paola") (carr IngComp)));agregar hechos a fact-list

(facts) ;muestra los hechos

;Rules son hechos condicionados, se requieren los deftemplates de los hecho involucrados
If carrera es IngComp then Debe cursar inteligencia artificial.
    condición(antecedente)  =>  acción(consecuente)
(defrule matObligatoria "Materia Obligatoria" ;nombre de la regla y comentario opcional
    (alumno (carr IngComp));Hecho condicionante LHS (Left Hand Side)
    =>
    (printout t "Debe cursar IA" clrf) ; Hecho condicionado RHS (Right Hand Side)
)
(list-defrules) ; Ver las reglas
(ppdefrule matObligatoria); pretty print de la regla indicada
(undefrule matObligatoria); elimina la regla indicada (undefrule *) elimina todas

;Agenda lista de las reglas activables, porque se cumplen antecedentes
(agenda) ; desplegar agenda, queda vacía después de ejecutar
(run); ejecuta la agenda, dispara la ejecución de las reglas de la agenda

(watch activations) ; monitorear activación de las reglas en la agenda
(refresh matObligatoria) ;reactiva la regla en la agenda

;Variable: Símboloque inicia con ? p.e. ?X
;Asociar valor con variable (bind ?X 5) semejante a asignación
(bind ?X(*(+ 5 3)(/ 12 4))) ; guarda en x el resultado
?X;muestra el resultado
;condiciones
(> ?X 20)
(> ?X 50)
(< ?X 50)
(< ?X 20)
(and (> ?X 10)(< ?X 50))
(clear) ;elimina constructs 
(bind ?X (read)) ;leer 
(bind ?Y (readline));leer línea
(clear-window) ;limpia pantalla
