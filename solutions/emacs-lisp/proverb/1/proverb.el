;;; proverb.el --- Proverb (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun recite-internal (strings)
  (cond ((> 2 (length strings)) '())
	(t (cons
	    (format "For want of a %s the %s was lost." (car strings) (cadr strings))
	    (recite-internal (cdr strings))))))

(defun recite (strings)
  (if (= 0 (length strings))
      '()
      (append
       (recite-internal strings)
       (list (format "And all for the want of a %s." (car strings))))))


(provide 'proverb)
;;; proverb.el ends here

(recite '("alpha" "beta" "gamma"))
