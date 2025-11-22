;;; bob.el --- Bob (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun asking-p (phrase)
  (string= "?" (substring phrase (1- (length phrase)))))

(defun yelling-p (phrase)
  (and (string= phrase (upcase phrase)) (string-match-p "[[:upper:]]" phrase)))

(defun nothing-p (phrase)
  (string-empty-p phrase))

(defun response-for (phrase)
  (let ((san-phrase (string-trim phrase)))
    (cond ((nothing-p san-phrase) "Fine. Be that way!")
	  ((and (asking-p san-phrase) (yelling-p san-phrase)) "Calm down, I know what I'm doing!")
	  ((asking-p san-phrase) "Sure.")
	  ((yelling-p san-phrase) "Whoa, chill out!")
	  (t "Whatever."))))


(provide 'bob)
;;; bob.el ends here
