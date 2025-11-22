;;; difference-of-squares.el --- Difference of Squares (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(require 'cl-lib)

(defun square-of-sum (n)
  (let ((sum (/ (* n (1+ n)) 2)))
    (* sum sum))
  )

(defun sum-of-squares (n)
  (cl-reduce '+ (mapcar (lambda (x) (* x x)) (number-sequence 1 n)))
)

(defun difference (n)
  (- (square-of-sum n) (sum-of-square n))
)

(provide 'difference-of-squares)
;;; difference-of-squares.el ends here

