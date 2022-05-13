;;;; chanakan-homepage.lisp

(in-package #:chanakan-homepage)

(defparameter *server* (make-instance 'hunchentoot:easy-acceptor
                                      :port 3000
                                      :address "127.0.0.1"))

(defun start ()
  (hunchentoot:start *server*))

(defun stop ()
  (hunchentoot:stop *server*))
