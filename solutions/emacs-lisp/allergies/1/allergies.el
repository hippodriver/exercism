;;; allergies.el --- Allergies Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun allergen-list (score)
  (setq allergies '())
  (if (allergic-to-p score "eggs") (setq allergies (cons "eggs" allergies)))
  (if (allergic-to-p score "peanuts") (setq allergies (cons "peanuts" allergies)))
  (if (allergic-to-p score "shellfish") (setq allergies (cons "shellfish" allergies)))
  (if (allergic-to-p score "strawberries") (setq allergies (cons "strawberries" allergies)))
  (if (allergic-to-p score "tomatoes") (setq allergies (cons "tomatoes" allergies)))
  (if (allergic-to-p score "chocolate") (setq allergies (cons "chocolate" allergies)))
  (if (allergic-to-p score "pollen") (setq allergies (cons "pollen" allergies)))
  (if (allergic-to-p score "cats") (setq allergies (cons "cats" allergies)))
  (reverse allergies))


(defun allergic-to-p (score allergen)
 (cond ((string= allergen "eggs") (> (logand score 1) 0))
       ((string= allergen "peanuts") (> (logand score 2) 0))
       ((string= allergen "shellfish") (> (logand score 4) 0))
       ((string= allergen "strawberries") (> (logand score 8) 0))
       ((string= allergen "tomatoes") (> (logand score 16) 0))
       ((string= allergen "chocolate") (> (logand score 32) 0))
       ((string= allergen "pollen") (> (logand score 64) 0))
       ((string= allergen "cats") (> (logand score 128) 0))))


(provide 'allergies)
;;; allergies.el ends here

(allergen-list 5)
