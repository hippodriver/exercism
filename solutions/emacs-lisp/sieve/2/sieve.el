;;; sieve.el --- Sieve (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(require 'cl-lib)

(defun primes (limit)
  (let ((numbers (number-sequence 2 limit)))
    (cl-loop for i from 2 to limit do
	     (cl-loop for j from (* 2 i) to limit by i do
		      (setq numbers (remove j numbers))))
    numbers))


(provide 'sieve)
;;; sieve.el ends here

(remove 5 (number-sequence 2 10))

(primes 2)
