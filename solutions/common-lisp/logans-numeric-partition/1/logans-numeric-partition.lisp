(defpackage :logans-numeric-partition
  (:use :cl)
  (:export :categorize-number :partition-numbers))

(in-package :logans-numeric-partition)

;; Define categorize-number function
(defun categorize-number (pair n)
  (if (oddp n)
      (cons (cons n (car pair)) (cdr pair))
      (cons (car pair) (cons n (cdr pair)))))

;; Define partition-numbers function
(defun partition-numbers (l)
  (reduce #'categorize-number l :initial-value '(() . ())))
