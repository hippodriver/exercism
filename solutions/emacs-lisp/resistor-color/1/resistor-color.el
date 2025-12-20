;;; resistor-color.el --- Resistor Color (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun colors ()
  '("black" "brown" "red" "orange" "yellow" "green" "blue" "violet" "grey" "white"))

(defun color-code (color)
  (seq-position (colors) color))


(provide 'resistor-color)
;;; resistor-color.el ends here

