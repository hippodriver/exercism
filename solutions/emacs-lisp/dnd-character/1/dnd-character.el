;;; dnd-character.el --- D&amp;D Character (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(require 'cl-lib)

(defun modifier (score)
  (floor (/ (- score 10) 2.0)))

(defun ability ()
  (cl-reduce '+ (cdr (sort (list (1+ (random 6)) (1+ (random 6)) (1+ (random 6)) (1+ (random 6))) '<))))


(defun generate-dnd-character ()
  (let ((constitution (ability)))
    (record 'dnd-char (ability) (ability) constitution (ability) (ability) (ability) (+ 10 (modifier constitution)))))


(provide 'dnd-character)
;;; dnd-character.el ends here

(random 10)
(sort '(1 5 2) '<)
(ability)
