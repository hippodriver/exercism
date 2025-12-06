;;; hamming.el --- Hamming (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun helper (dna1 dna2 distance)
  (cond
   ((= (length dna1) 0) distance)
   ((string= (car dna1) (car dna2)) (helper (cdr dna1) (cdr dna2) distance))
   (t (helper (cdr dna1) (cdr dna2) (+ 1  distance)))))

(defun hamming-distance (dna1 dna2)
  (if (/= (length dna1) (length dna2))
      (error "unequal length")
    (helper (seq-map #'char-to-string dna1) (seq-map #'char-to-string dna2) 0)))


(provide 'hamming)
;;; hamming.el ends here

