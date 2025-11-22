;;; darts.el --- Darts (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun distance (x y)
  (sqrt (+ (* x x) (* y y))))

(defun score (x y)
  (cond ((<= (distance x y) 1) 10)
	((<= (distance x y) 5) 5)
	((<= (distance x y) 10) 1)
	(t 0)))


(provide 'darts)
;;; darts.el ends here

(distance 2 2)
(score 2 4.7)
