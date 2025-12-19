;;; pangram.el --- Pangram (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(setq chars
      '("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n"
	"o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z"))

(defun pangramp (phrase)
  (let ((normalized-phrase (downcase phrase)))
    (seq-every-p (lambda (x) (string-match x normalized-phrase)) chars)))


(provide 'pangram)
;;; pangram.el ends here
