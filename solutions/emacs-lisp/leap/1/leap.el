;;; leap.el --- Leap exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun leap-year-p (year)
  (cond
   ((= (mod year 400) 0) t)
   ((= (mod year 100) 0) nil)
   ((= (mod year 4) 0) t)
   (t nil))
)

(provide 'leap-year-p)
;;; leap.el ends here

