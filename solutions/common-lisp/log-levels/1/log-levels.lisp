(defpackage :log-levels
  (:use :cl)
  (:export :log-message :log-severity :log-format))

(in-package :log-levels)

(defun log-message (log-string)
  (subseq log-string 8))

(defun log-severity (log-string)
  (let ((level (string-downcase (subseq log-string 1 5))))
    (cond
      ((equal level "info") :everything-ok)
      ((equal level "warn") :getting-worried)
      ((equal level "ohno") :run-for-cover))))

(defun log-format (log-string)
  (let ((level (log-severity log-string))
	(message (log-message log-string)))
    (cond
      ((equal level :everything-ok) (string-downcase message))
      ((equal level :getting-worried) (string-capitalize message))
      ((equal level :run-for-cover) (string-upcase message)))))
