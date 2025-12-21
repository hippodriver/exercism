;;; two-fer.el --- Two-fer Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun two-fer (&optional name)
  (let ((n (if name name "you")))
    (concat "One for " n ", one for me.")))

(provide 'two-fer)
;;; two-fer.el ends here
