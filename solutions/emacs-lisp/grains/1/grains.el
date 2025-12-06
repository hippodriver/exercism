;;; grains.el --- Grains exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun square (n)
  (expt 2 (- n 1))
)

(defun total ()
  (seq-reduce '+ (mapcar 'square (number-sequence 1 64)) 0)
)

(provide 'grains)
;;; grains.el ends here

