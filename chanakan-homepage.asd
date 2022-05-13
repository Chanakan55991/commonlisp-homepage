;;;; chanakan-homepage.asd

(asdf:defsystem #:chanakan-homepage
  :description "Chanakan's Homepage written in Common Lisp"
  :author "Chanakan Mungtin <chanakan5591@chanakancloud.net>"
  :license  "MIT"
  :version "0.0.1"
  :serial t
  :depends-on (#:spinneret
               #:parenscript
               #:str
               #:local-time
               #:hunchentoot
               #:lass)
  :pathname "src"
  :components ((:file "package")
               (:module "pages"
                :serial t
                :components ((:file "protocol")
                             (:file "css")
                             (:file "home")))
               (:file "handlers")
               (:file "chanakan-homepage")))
