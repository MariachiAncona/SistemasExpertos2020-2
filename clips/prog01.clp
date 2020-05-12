(clear)
(deftemplate alumno (slot nCta) (slot nombre))

(assert (alumno (nCta 10) (nombre "paola" )))

(assert (alumno (nCta 12) (nombre "daniel"))
        (alumno (nCta 13) (nombre "simon"))
	(alumno (nCta 16) (nombre "ricardo"))
)
