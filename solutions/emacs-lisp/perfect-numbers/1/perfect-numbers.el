;;; perfect-numbers.el --- perfect-numbers Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun aliquot (n)
  (setq factors '())
  (let* ((i (- n 1)))
    (while (> i 0)
      (when (= 0 (% n i))
	(setq factors (cons i factors)))
      (setq i (- i 1))))
  (seq-reduce '+ factors 0))

(defun classify (number)
  (when (< number 1)
    (error "Classification is only possible for natural numbers"))
  (let ((a (aliquot number)))
    (cond ((= number a) 'perfect)
	  ((< number a) 'abundant)
	  (t 'deficient))))

(provide 'perfect-numbers)
;;; perfect-numbers.el ends here

(classify 8)
