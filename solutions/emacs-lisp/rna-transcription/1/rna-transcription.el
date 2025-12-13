;;; rna-transcription.el -- RNA Transcription (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun single (x)
  (cond ((string= x "") "")
	((string= x "G") "C")
	((string= x "C") "G")
	((string= x "T") "A")
	((string= x "A") "U")
	(t (error "Unknown base"))))

(defun to-rna (strand)
  (seq-reduce (lambda (x y) (concat x (single (char-to-string y)))) strand ""))

(provide 'rna-transcription)
;;; rna-transcription.el ends here
