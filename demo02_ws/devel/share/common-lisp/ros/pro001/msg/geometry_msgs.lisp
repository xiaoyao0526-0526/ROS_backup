; Auto-generated. Do not edit!


(cl:in-package pro001-msg)


;//! \htmlinclude geometry_msgs.msg.html

(cl:defclass <geometry_msgs> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass geometry_msgs (<geometry_msgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <geometry_msgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'geometry_msgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pro001-msg:<geometry_msgs> is deprecated: use pro001-msg:geometry_msgs instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <geometry_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pro001-msg:speed-val is deprecated.  Use pro001-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <geometry_msgs>) ostream)
  "Serializes a message object of type '<geometry_msgs>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <geometry_msgs>) istream)
  "Deserializes a message object of type '<geometry_msgs>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<geometry_msgs>)))
  "Returns string type for a message object of type '<geometry_msgs>"
  "pro001/geometry_msgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'geometry_msgs)))
  "Returns string type for a message object of type 'geometry_msgs"
  "pro001/geometry_msgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<geometry_msgs>)))
  "Returns md5sum for a message object of type '<geometry_msgs>"
  "4641bb0523a3557209606d9bd91ce33a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'geometry_msgs)))
  "Returns md5sum for a message object of type 'geometry_msgs"
  "4641bb0523a3557209606d9bd91ce33a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<geometry_msgs>)))
  "Returns full string definition for message of type '<geometry_msgs>"
  (cl:format cl:nil "float64 speed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'geometry_msgs)))
  "Returns full string definition for message of type 'geometry_msgs"
  (cl:format cl:nil "float64 speed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <geometry_msgs>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <geometry_msgs>))
  "Converts a ROS message object to a list"
  (cl:list 'geometry_msgs
    (cl:cons ':speed (speed msg))
))
