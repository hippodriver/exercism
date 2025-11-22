;;; collatz-conjecture.el --- Collatz Conjecture (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun steps (number)
  "Count the steps to reach 1 using the Collatz conjecture."
  (if (< number 1)
      (error "Number must be >= 1"))
  (let ((count 0)
	(rest number))
    (while (> rest 1)
      (setq count (1+ count))
      (if (= 0 (mod rest 2))
	  (setq rest (/ rest 2))
	(setq rest (1+ (* 3 rest)))))
    count))

(provide 'collatz-conjecture)
;;; collatz-conjecture.el ends here


(steps 12)
