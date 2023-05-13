
(cl:in-package :asdf)

(defsystem "level_three_projects-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Location_monitor" :depends-on ("_package_Location_monitor"))
    (:file "_package_Location_monitor" :depends-on ("_package"))
  ))