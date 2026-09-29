(defpackage :sum-of-multiples
  (:use :cl)
  (:export :sum))

(in-package :sum-of-multiples)

(defun multiples (base limit)
  (if (or (< limit 2) (<= base 0))
      '(0) 
      (let ((multi (floor (- limit 1) base))
	    (numbers '()))
	(dotimes (n multi)
	  (setf numbers (cons (* (+ n 1) base) numbers)))
	numbers)))

(defun sum (factors limit)
  (let* ((factor-multiples (mapcar (lambda (x) (multiples x limit)) factors))
	 (all-factors (remove-duplicates (reduce #'append factor-multiples))))
    (reduce #'+ all-factors))
  )
