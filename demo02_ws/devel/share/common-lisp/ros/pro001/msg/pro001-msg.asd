
(cl:in-package :asdf)

(defsystem "pro001-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Location_monitor" :depends-on ("_package_Location_monitor"))
    (:file "_package_Location_monitor" :depends-on ("_package"))
    (:file "geometry_msgs" :depends-on ("_package_geometry_msgs"))
    (:file "_package_geometry_msgs" :depends-on ("_package"))
  ))