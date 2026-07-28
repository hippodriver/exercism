(defpackage :triangle
  (:use :cl)
  (:export :triangle-type-p))

(in-package :triangle)

(defun triangle-type-p (type a b c)
  "Deterimines if a triangle (given by side lengths A, B, C) is of the given TYPE"
  (cond ((or (<= a 0) (<= b 0) (<= c 0)) nil)
	((not (and (>= (+ a b) c) (>= (+ b c) a) (>= (+ a c) b))) nil)
	((equal type :equilateral) (= a b c))
	((equal type :isosceles) (or (= a b) (= a c) (= b c)))
	((equal type :scalene) (and (/= a b) (/= a c) (/= b c))))
  )
