;;; kindergarten-garden.el --- Kindergarten Garden (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(setq indices'(
	       ("Alice" . (0 1))
	       ("Bob" . (2 3))
	       ("Charlie" . (4 5))
	       ("David" . (6 7))
	       ("Eve" . (8 9))
	       ("Fred" . (10 11))
	       ("Ginny" . (12 13))
	       ("Harriet" . (14 15))
	       ("Ileana" . (16 17))
	       ("Joseph" . (18 19))
	       ("Kincaid" . (20 21))
	       ("Larry" . (22 23))))

(defun expand-name (c)
  (cond ((= c ?G) "grass")
	((= c ?C) "clover")
	((= c ?R) "radishes")
	((= c ?V) "violets")))

(defun plants (diagram student)
  (let* ((lines (split-string diagram "\n"))
	(names (list
		(aref (car lines) (cadr (assoc student indices)))
		(aref (car lines) (caddr (assoc student indices)))
		(aref (cadr lines) (cadr (assoc student indices)))
		(aref (cadr lines) (caddr (assoc student indices))))))
    (mapcar 'expand-name names)))


(provide 'plants)
;;; kindergarten-garden.el ends here

(caddr (assoc "Joseph" indices))
(expand-name ?R)
(plants "GC\nRV" "Alice")
