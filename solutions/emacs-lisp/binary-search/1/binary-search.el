;;; binary-search.el --- Binary Search (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun search (array value left right)
  (let ((middle (/ (+ left right) 2)))
    (cond ((= right left) (if (= value (elt array left)) left nil))
	  ((< value (elt array middle)) (search array value left middle))
	  ((> value (elt array middle)) (search array value (+  middle 1) right))
	  (t middle))))

(defun find-binary (array value)
  (if (= 0 (length array))
      nil
    (search array value 0 (- (length array) 1))))


(provide 'binary-search)
;;; binary-search.el ends here

(find-binary [1 2 3] 3)
