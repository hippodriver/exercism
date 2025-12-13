;;; eliuds-eggs.el --- Eliud's Eggs (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun egg-count (number)
  (cond ((= number 0) 0)
	((= (% number 2) 0) (egg-count (truncate number 2)))
	(t (+ 1 (egg-count (truncate number 2))))))


(provide 'eliuds-eggs)
;;; eliuds-eggs.el ends here

