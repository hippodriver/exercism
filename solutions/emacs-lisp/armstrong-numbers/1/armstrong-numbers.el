;;; armstrong-numbers.el --- armstrong-numbers Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun armstrong-p (n)
  (let ((digits '())
	(rest n))
    (while (> rest 0)
      (setq digits (cons (mod rest 10) digits))
      (setq rest (/ rest 10)))
    (let* ((len (length digits))
	   (result (seq-reduce (lambda (x y) (+ x (expt y len))) digits 0)))
      (= n result))))


(provide 'armstrong-numbers)
;;; armstrong-numbers.el ends here

(armstrong-p 2)
