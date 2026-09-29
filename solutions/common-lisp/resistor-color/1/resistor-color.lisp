(defpackage :resistor-color
  (:use :cl)
  (:export :color-code
           :colors))

(in-package :resistor-color)

(defun color-code (color)
  (cond ((equal color "black") 0)
	((equal color "brown") 1)
	((equal color "red") 2)
	((equal color "orange") 3)
	((equal color "yellow") 4)
	((equal color "green") 5)
	((equal color "blue") 6)
	((equal color "violet") 7)
	((equal color "grey") 8)
	((equal color "white") 9)))

(defun colors ()
  '("black" "brown" "red" "orange" "yellow" "green" "blue" "violet" "grey" "white"))
