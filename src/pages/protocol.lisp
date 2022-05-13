(in-package #:chanakan-homepage)

(defclass page ()
  ((title
    :accessor title
    :initarg :title
    :initform "title")))

(defclass status ()
  ())

(defgeneric display-page (page status)
  (:documentation "Renders a page into HTML."))

(defmethod display-page (page status)
  (spinneret:with-html-string
    (:html
     (:head
      (display-header page status))
     (:body
      (display-body page status))
     (:footer
      (display-footer page status)))))

(defgeneric display-header (page status))

(defmethod display-header (page status)
  (spinneret:with-html
    (:title (title page))
    (:link :rel "preconnect" :href "https://fonts.googleapis.com")
    (:link :rel "preconnect" :href "https://https://fonts.gstatic.com" :crossorigin "")
    (:link :href "https://fonts.googleapis.com/css2?family=M+PLUS+Rounded+1c&display=swap" :rel "stylesheet")
    (display-css page status)))

(defgeneric display-body (page status))

(defgeneric display-footer (page status))

(defmethod display-footer (page status)
  nil)

(defgeneric display-css (page status)
  (:method-combination append :most-specific-last))

(defmethod display-css :around (page status)
  (spinneret:with-html
    (:style (apply #'lass:compile-and-write (call-next-method)))))

(defmethod display-css append (page status)
  *standard-css*)
