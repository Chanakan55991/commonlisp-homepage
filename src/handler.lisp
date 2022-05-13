(in-package #:chanakan-homepage)

(hunchentoot:define-easy-handler (home :uri "/") ()
  (display-page (make-instance 'home)
                (make-instance 'status)))
