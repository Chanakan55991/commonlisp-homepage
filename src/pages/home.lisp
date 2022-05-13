(in-package #:chanakan-homepage)

(defclass home (page)
  ((title
    :initform "Chanakan Mungtin")))

(defmethod display-body ((page home) status)
  (spinneret:with-html
    (:div :class "masthead"
    (:img :src "https://ondianau.sirv.com/pfp.jpg?h=210" :height "210em")
    (:h1 "Chanakan Mungtin"))))

(defmethod display-css append ((page home) status)
  `((.masthead
     :color "white"
     :display "flex"
     :flex-direction "row"
     :align-items "center"
     :height "100%"
     :justify-content "center")
    (img
     :width "200px"
     :border-radius "9999px"
     :margin-right "2em")))
