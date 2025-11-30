;;; gigasecond.el --- Gigasecond (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun sum (second minute hour day month year))

(defun add (second minute hour day month year)
  (let* ((moment (encode-time second minute hour day month year))
	 (moment-as-float (float-time moment))
	 (future-as-float (+ moment-as-float 1000000000)))
    (seq-take (decode-time future-as-float) 6)))

(provide 'gigasecond)
;;; gigasecond.el ends here

