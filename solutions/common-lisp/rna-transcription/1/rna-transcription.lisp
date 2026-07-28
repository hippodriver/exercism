(defpackage :rna-transcription
  (:use :cl)
  (:export :to-rna :map-nuc))
(in-package :rna-transcription)

(defun map-nuc (c)
  (cond ((equal c #\G) #\C)
	((equal c #\C) #\G)
	((equal c #\T) #\A)
	((equal c #\A) #\U)
	(t (error "Unknown nuc"))))

(defun to-rna (str)
  "Transcribe a string representing DNA nucleotides to RNA."
  (let* ((nucs-orig (coerce str 'list))
	 (nucs-trans (mapcar #'map-nuc nucs-orig)))
    (coerce nucs-trans 'string)
    )
  )
