;;; acronym.el --- Acronym (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun acronym (phrase)
  (let* ((phrase-with-spaces (replace-regexp-in-string "-" " " phrase))
	 (phrase-with-chars-only (replace-regexp-in-string "[^a-zA-Z\s]" "" phrase-with-spaces))
	 (single-words (split-string phrase-with-chars-only))
	 (single-chars (mapcar '(lambda (x) (substring x 0 1)) single-words))
	 (single-uppercase-chars (mapcar 'upcase single-chars)))
    (mapconcat 'identity single-uppercase-chars "")))

(provide 'acronym)
;;; acronym.el ends here

(acronym "Hello World")
