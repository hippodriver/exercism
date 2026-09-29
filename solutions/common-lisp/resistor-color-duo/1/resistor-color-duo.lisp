(defpackage :resistor-color-duo
  (:use :cl)
  (:export :value))

(in-package :resistor-color-duo)

(defun to-number (color)
  (cond ((equal color "black") "0")
	((equal color "brown") "1")
	((equal color "red") "2")
	((equal color "orange") "3")
	((equal color "yellow") "4")
	((equal color "green") "5")
	((equal color "blue") "6")
	((equal color "violet") "7")
	((equal color "grey") "8")
	((equal color "white") "9")))

(defun value (colors)
  (parse-integer (reduce (lambda (a b) (concatenate 'string a b)) (mapcar #'to-number (subseq colors 0 2)))))
