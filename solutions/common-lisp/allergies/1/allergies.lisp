(defpackage :allergies
  (:use :cl)
  (:shadow :list)
  (:export :allergic-to-p :list))

(in-package :allergies)

(defun allergic-to-p (score allergen)
  "Returns true if given allergy score includes given allergen."
  (cond ((equal allergen "eggs") (< 0 (logand score #b1)))
	((equal allergen "peanuts") (< 0 (logand score #b10)))
	((equal allergen "shellfish") (< 0 (logand score #b100)))
	((equal allergen "strawberries") (< 0 (logand score #b1000)))
	((equal allergen "tomatoes") (< 0 (logand score #b10000)))
	((equal allergen "chocolate") (< 0 (logand score #b100000)))
	((equal allergen "pollen") (< 0 (logand score #b1000000)))
	((equal allergen "cats") (< 0 (logand score #b10000000)))	
	(t nil))
  )


(defun list (score)
  "Returns a list of allergens for a given allergy score."
  (let ((allergens '("eggs" "peanuts" "shellfish" "strawberries" "tomatoes" "chocolate" "pollen" "cats")))
    (remove-if-not (lambda (a) (allergic-to-p score a)) allergens))
  )
