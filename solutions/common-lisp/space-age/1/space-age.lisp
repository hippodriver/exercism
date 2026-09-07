(defpackage :space-age
  (:use :cl)
  (:export :on-mercury
           :on-venus
           :on-earth
           :on-mars
           :on-jupiter
           :on-saturn
           :on-uranus
           :on-neptune))

(in-package :space-age)

(defun on-earth (s)
  (/ s (* 60 60 24 365.25)))

(defun on-mercury (s)
  (/ (on-earth s) 0.2408467))

(defun on-venus (s)
  (/ (on-earth s) 0.61519726))

(defun on-mars (s)
  (/ (on-earth s) 1.8808158))

(defun on-jupiter (s)
  (/ (on-earth s) 11.862615))

(defun on-saturn (s)
  (/ (on-earth s) 29.447498))

(defun on-uranus (s)
  (/ (on-earth s) 84.016846))

(defun on-neptune (s)
  (/ (on-earth s) 164.79132))
