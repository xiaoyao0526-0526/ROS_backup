; Auto-generated. Do not edit!


(cl:in-package pro_turtlebot_s-msg)


;//! \htmlinclude Location_monitor.msg.html

(cl:defclass <Location_monitor> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass Location_monitor (<Location_monitor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Location_monitor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Location_monitor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pro_turtlebot_s-msg:<Location_monitor> is deprecated: use pro_turtlebot_s-msg:Location_monitor instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Location_monitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pro_turtlebot_s-msg:name-val is deprecated.  Use pro_turtlebot_s-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <Location_monitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pro_turtlebot_s-msg:distance-val is deprecated.  Use pro_turtlebot_s-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Location_monitor>) ostream)
  "Serializes a message object of type '<Location_monitor>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Location_monitor>) istream)
  "Deserializes a message object of type '<Location_monitor>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Location_monitor>)))
  "Returns string type for a message object of type '<Location_monitor>"
  "pro_turtlebot_s/Location_monitor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Location_monitor)))
  "Returns string type for a message object of type 'Location_monitor"
  "pro_turtlebot_s/Location_monitor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Location_monitor>)))
  "Returns md5sum for a message object of type '<Location_monitor>"
  "e2f8ddf8c9e39a28149179429f5ae342")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Location_monitor)))
  "Returns md5sum for a message object of type 'Location_monitor"
  "e2f8ddf8c9e39a28149179429f5ae342")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Location_monitor>)))
  "Returns full string definition for message of type '<Location_monitor>"
  (cl:format cl:nil "string name~%float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Location_monitor)))
  "Returns full string definition for message of type 'Location_monitor"
  (cl:format cl:nil "string name~%float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Location_monitor>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Location_monitor>))
  "Converts a ROS message object to a list"
  (cl:list 'Location_monitor
    (cl:cons ':name (name msg))
    (cl:cons ':distance (distance msg))
))
