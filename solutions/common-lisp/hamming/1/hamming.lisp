(defpackage :hamming
  (:use :cl)
  (:export :distance))

(in-package :hamming)

(defun distance (strand1 strand2)
  (if (/= (length strand1) (length strand2))
      nil
      (let ((distance 0))
	(loop for c1 across strand1
	      for c2 across strand2
	      do (if (not (equal c1 c2)) (setf distance (+ 1 distance))))
	distance)))
