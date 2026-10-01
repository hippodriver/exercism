(defpackage :bob
  (:use :cl)
  (:export :response))
(in-package :bob)

(defun is-barf (saying)
  (and (string= saying (string-upcase saying)) (some #'alpha-char-p saying)))

(defun is-question (saying)
  (equal
	  (char
	   (string-trim '(#\Space #\Tab #\NewLine) saying)
	   (1- (length (string-trim '(#\Space #\Tab #\NewLine) saying)))) #\?))

(defun response (hey-bob)
  (cond ((= 0 (length (string-trim '(#\Space #\Tab #\NewLine) hey-bob))) "Fine. Be that way!")
	((and (is-barf hey-bob) (is-question hey-bob)) "Calm down, I know what I'm doing!")
	((is-question hey-bob) "Sure.")
	((is-barf hey-bob) "Whoa, chill out!")
	(t "Whatever.")))
