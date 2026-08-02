(defpackage :two-fer
  (:use :cl)
  (:export :twofer))
(in-package :two-fer)

(defun twofer (&optional name)
  (cond ((null name) "One for you, one for me." )
	((> (length name) 0) (format nil  "One for ~a, one for me." name))
	(t "One for you, one for me.")))
