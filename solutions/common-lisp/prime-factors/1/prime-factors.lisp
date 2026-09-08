(defpackage :prime-factors
  (:use :cl)
  (:export :factors))

(in-package :prime-factors)

(defun factors (n)
  (let ((rest n) (d 2) (l '()))
    (loop
      (cond ((> d rest)
	     (return  l))
	    ((= (mod rest d) 0)
	     (setq l (append l (list d)))
	     (setq rest (/ rest d)))
	    (t (setq d (+ d 1)))))))
