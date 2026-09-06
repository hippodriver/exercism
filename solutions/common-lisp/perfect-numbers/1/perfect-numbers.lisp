(defpackage :perfect-numbers
  (:use :cl)
  (:export :classify))

(in-package :perfect-numbers)

(defun factorize (number rest factors)
    (if (<= rest 0)
	factors
	(factorize number (- rest 1) (if (= (mod number rest) 0) (cons rest factors) factors))))

(defun classify (number)
  (let* ((digits (factorize number (- number 1) '()))
	 (sum (reduce #'+ digits :initial-value 0)))
    (cond ((<= number 0) nil)
	  ((= number sum) "perfect")
	  ((< number sum) "abundant")
	  (t "deficient"))))
