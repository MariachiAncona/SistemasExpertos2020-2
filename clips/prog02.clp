(deftemplate alumno (slot nCta) (slot nombre) (slot carr))
(list-deftemplate) ;lista de templates
(ppdeftemplate alumno) ;pretty print el template indicado
; (undeftemplate alumno) eliminar definición del template
; (undeftemplate *) elimina todos los templates

; Definición de hechos
(assert (alumno (nCta 1) (nombre "Paola") (carr IngComp)));agregar hechos a fact-list

(facts) ;muestra los hechos
