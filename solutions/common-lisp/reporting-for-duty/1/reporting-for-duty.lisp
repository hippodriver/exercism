(defpackage :reporting-for-duty
  (:use :cl)
  (:export :format-quarter-value :format-two-quarters
           :format-two-quarters-for-reading))

(in-package :reporting-for-duty)

;; Define format-quarter-value function.
(defun format-quarter-value (quarter value)
  (format nil "The value ~A quarter: ~A" quarter value))

;; Define format-two-quarters function.
(defun format-two-quarters (stream first-quarter first-value second-quarter second-value)
  (let ((first-line (format-quarter-value first-quarter first-value))
	(second-line (format-quarter-value second-quarter second-value)))
    (format stream "~%~A~%~A~%" first-line second-line)))

;; Define format-two-quarters-for-reading function.
(defun format-two-quarters-for-reading (stream first-quarter first-value second-quarter second-value)
  (let ((first-line (format-quarter-value first-quarter first-value))
	(second-line (format-quarter-value second-quarter second-value)))
    (format stream "(~S ~S)" first-line second-line)))
