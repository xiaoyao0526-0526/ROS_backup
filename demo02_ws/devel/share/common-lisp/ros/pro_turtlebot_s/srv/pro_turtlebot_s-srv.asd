
(cl:in-package :asdf)

(defsystem "pro_turtlebot_s-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "turtle_control" :depends-on ("_package_turtle_control"))
    (:file "_package_turtle_control" :depends-on ("_package"))
  ))