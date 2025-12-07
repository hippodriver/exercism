;;; isogram.el --- isogram (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun isogramp (phrase)
  (let ((used-chars '())
	(chars (string-to-list (downcase (replace-regexp-in-string "[- ]" "" phrase))))
	(is-isogram t))
    (dolist (c chars)
      (if (member c used-chars)
	  (setq is-isogram nil)
	(setq used-chars (cons c used-chars))))
    is-isogram))


(provide 'isogram)
;;; isogram.el ends here

