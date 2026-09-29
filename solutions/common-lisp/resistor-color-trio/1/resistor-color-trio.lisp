(defpackage :resistor-color-trio
  (:use :cl)
  (:export :label))

(in-package :resistor-color-trio)

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

(defun multi (colors)
  (parse-integer (to-number (nth 2 colors))))

(defun pure-value (colors)
  (* (expt 10 (multi colors)) (value colors)))

(defun normalize (res)
  (cond ((> res 1000000000) (format nil "~A gigaohms" (/ res 1000000000)))
	((> res 1000000) (format nil "~A megaohms" (/ res 1000000)))
	((> res 1000) (format nil "~A kiloohms" (/ res 1000)))
	(t (format nil "~A ohms" res))))

(defun label (colors)
  (normalize (pure-value colors)))
