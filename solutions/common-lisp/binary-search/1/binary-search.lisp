(defpackage :binary-search
  (:use :cl)
  (:export :binary-find :value-error))

(in-package :binary-search)

(defun binary-search (arr el start end)
  (let* ((middle (floor (+ end start) 2))
	(middle-value (aref arr middle)))
    (cond ((equal el middle-value) middle)
	  ((< (- end start) 1) nil)
	  ((< el middle-value) (binary-search arr el start middle))
	  (t (binary-search arr el (+ middle 1) end)))))

(defun binary-find (arr el)
  (if (= 0 (length arr))
      nil
      (binary-search arr el 0 (1- (length arr)))))
