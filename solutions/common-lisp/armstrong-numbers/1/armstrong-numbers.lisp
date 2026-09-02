(defpackage :armstrong-numbers
  (:use :cl)
  (:export :armstrong-number-p))
(in-package :armstrong-numbers)

(defun number-to-digits (number)
  (if (= number 0 )
      '()
      (cons (mod number 10) (number-to-digits (floor number 10)))))

(defun armstrong-number-p (number)
  (let* ((digits (number-to-digits number))
	 (number-of-digits (length digits))
	 (sum (reduce #'+ (mapcar (lambda (x) (expt x number-of-digits)) digits))))
    (= number sum)))
