;;; rotational-cipher.el --- Rotational Cipher (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun handle-char (c shift-key)
  (cond ((and (< 64 c) (< c 91))
	 (+  (mod (+ c shift-key -65) 26) 65))
	((and (< 96 c) (< c 123))
	 (+  (mod (+ c shift-key -97) 26) 97))
	(t c)))

(defun rotate (text shift-key)
  (apply #'concat (seq-map (lambda (x) (char-to-string (handle-char x shift-key))) (string-to-list text))))


(provide 'rotational-cipher)
;;; rotational-cipher.el ends here

(rotate "aaa" 0)

