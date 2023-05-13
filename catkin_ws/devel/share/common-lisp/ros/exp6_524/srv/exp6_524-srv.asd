
(cl:in-package :asdf)

(defsystem "exp6_524-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DoSquare" :depends-on ("_package_DoSquare"))
    (:file "_package_DoSquare" :depends-on ("_package"))
  ))