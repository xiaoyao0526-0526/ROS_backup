; Auto-generated. Do not edit!


(cl:in-package level_three-msg)


;//! \htmlinclude cmd_msg.msg.html

(cl:defclass <cmd_msg> (roslisp-msg-protocol:ros-message)
  ((cmd_msg
    :reader cmd_msg
    :initarg :cmd_msg
    :type geometry_msgs-msg:Twist
<<<<<<< HEAD
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (target
    :reader target
    :initarg :target
    :type cl:integer
    :initform 0))
=======
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
>>>>>>> 0a4397d857b6d8748b148ea9dda2c77306ec837e
)

(cl:defclass cmd_msg (<cmd_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cmd_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cmd_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name level_three-msg:<cmd_msg> is deprecated: use level_three-msg:cmd_msg instead.")))

(cl:ensure-generic-function 'cmd_msg-val :lambda-list '(m))
(cl:defmethod cmd_msg-val ((m <cmd_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader level_three-msg:cmd_msg-val is deprecated.  Use level_three-msg:cmd_msg instead.")
  (cmd_msg m))
<<<<<<< HEAD

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <cmd_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader level_three-msg:target-val is deprecated.  Use level_three-msg:target instead.")
  (target m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cmd_msg>) ostream)
  "Serializes a message object of type '<cmd_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cmd_msg) ostream)
  (cl:let* ((signed (cl:slot-value msg 'target)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
=======
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cmd_msg>) ostream)
  "Serializes a message object of type '<cmd_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cmd_msg) ostream)
>>>>>>> 0a4397d857b6d8748b148ea9dda2c77306ec837e
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cmd_msg>) istream)
  "Deserializes a message object of type '<cmd_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cmd_msg) istream)
<<<<<<< HEAD
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
=======
>>>>>>> 0a4397d857b6d8748b148ea9dda2c77306ec837e
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cmd_msg>)))
  "Returns string type for a message object of type '<cmd_msg>"
  "level_three/cmd_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cmd_msg)))
  "Returns string type for a message object of type 'cmd_msg"
  "level_three/cmd_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cmd_msg>)))
  "Returns md5sum for a message object of type '<cmd_msg>"
<<<<<<< HEAD
  "566d17a628bc076339216b5cb43fb1ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cmd_msg)))
  "Returns md5sum for a message object of type 'cmd_msg"
  "566d17a628bc076339216b5cb43fb1ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cmd_msg>)))
  "Returns full string definition for message of type '<cmd_msg>"
  (cl:format cl:nil "geometry_msgs/Twist cmd_msg~%int32 target~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cmd_msg)))
  "Returns full string definition for message of type 'cmd_msg"
  (cl:format cl:nil "geometry_msgs/Twist cmd_msg~%int32 target~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cmd_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cmd_msg))
     4
=======
  "71f25e80beb7e45806f82da575102343")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cmd_msg)))
  "Returns md5sum for a message object of type 'cmd_msg"
  "71f25e80beb7e45806f82da575102343")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cmd_msg>)))
  "Returns full string definition for message of type '<cmd_msg>"
  (cl:format cl:nil "geometry_msgs/Twist cmd_msg~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cmd_msg)))
  "Returns full string definition for message of type 'cmd_msg"
  (cl:format cl:nil "geometry_msgs/Twist cmd_msg~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cmd_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cmd_msg))
>>>>>>> 0a4397d857b6d8748b148ea9dda2c77306ec837e
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cmd_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'cmd_msg
    (cl:cons ':cmd_msg (cmd_msg msg))
<<<<<<< HEAD
    (cl:cons ':target (target msg))
=======
>>>>>>> 0a4397d857b6d8748b148ea9dda2c77306ec837e
))
