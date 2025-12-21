;;; space-age.el --- Space Age (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun age (planet seconds)
  (let ((earth-years (/ seconds (* 60 60 24 365.25))))
    (cond ((eq planet :earth) earth-years)
	  ((eq planet :mercury) (/ earth-years 0.2408467))
	  ((eq planet :venus) (/ earth-years 0.61519726))
	  ((eq planet :mars) (/ earth-years 1.8808158))
	  ((eq planet :jupiter) (/ earth-years 11.862615))
	  ((eq planet :saturn) (/ earth-years 29.447498))
	  ((eq planet :uranus) (/ earth-years 84.016846))
	  ((eq planet :neptune) (/ earth-years 164.79132))
	  (t (error "unknown planet")))))


(provide 'space-age)
;;; space-age.el ends here

