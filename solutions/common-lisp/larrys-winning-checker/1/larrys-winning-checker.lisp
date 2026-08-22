(defpackage :larrys-winning-checker
  (:use :cl)
  (:export
   :make-empty-board
   :make-board-from-list
   :all-the-same-p
   :row
   :column))

(in-package :larrys-winning-checker)

(defun make-empty-board ()
  (make-array '(3 3) :initial-element nil))

(defun make-board-from-list (list)
  (make-array '(3 3) :initial-contents list))

(defun all-the-same-p (row-or-col)
  (every (lambda (x) (eq (aref row-or-col 0) x)) row-or-col))

(defun row (board row-num)
  (let ((r (make-array 3)))
    (dotimes (i 3)
      (setf (aref r i) (aref board row-num i)))
    r))

(defun column (board col-num)
  (let ((c (make-array 3)))
    (dotimes (i 3)
      (setf (aref c i) (aref board i col-num)))
    c))
