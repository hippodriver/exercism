(defpackage :gigasecond-anniversary
  (:use :cl)
  (:export :from))
(in-package :gigasecond-anniversary)

(defun from (year month day hour minute second)
  (let* ((start (encode-universal-time second minute hour day month year 0))
	 (end (+ start 1000000000)))
    (multiple-value-bind (s mi h d mo y)
	(decode-universal-time end 0) (list y mo d h mi s))))
