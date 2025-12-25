;;; sieve.el --- Sieve (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(require 'cl-lib)

(defun primes (limit)
  (let ((numbers (number-sequence 2 limit)))
    (cl-loop for i from 2 to limit do
	     (cl-loop for j from i by i to limit do
		      (setq numbers (remove j numbers))))
    numbers))


(provide 'sieve)
;;; sieve.el ends here
