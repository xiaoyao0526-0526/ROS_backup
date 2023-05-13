
(cl:in-package :asdf)

(defsystem "level_three-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "cmd_msg" :depends-on ("_package_cmd_msg"))
    (:file "_package_cmd_msg" :depends-on ("_package"))
    (:file "Location_monitor" :depends-on ("_package_Location_monitor"))
    (:file "_package_Location_monitor" :depends-on ("_package"))
  ))