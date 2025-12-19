;;; scrabble-score.el --- Scrabble Score (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun weight (x)
  (cond
   ((member x '(?a ?e ?i ?o ?u ?l ?n ?r ?s ?t)) 1)
   ((member x '(?d ?g)) 2)
   ((member x '(?b ?c ?m ?p)) 3)
   ((member x '(?f ?h ?v ?w ?y)) 4)
   ((= x ?k) 5)
   ((member x '(?j ?x)) 8)
   ((member x '(?q ?z)) 10)
   t 0))

(defun score (word)
  (let ((normalized-word (downcase word)))
    (seq-reduce (lambda (a b) (+ a (weight b))) normalized-word 0)))

(provide 'scrabble-score)
;;; scrabble-score.el ends here

