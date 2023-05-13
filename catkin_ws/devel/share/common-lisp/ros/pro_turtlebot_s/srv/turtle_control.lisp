; Auto-generated. Do not edit!


(cl:in-package pro_turtlebot_s-srv)


;//! \htmlinclude turtle_control-request.msg.html

(cl:defclass <turtle_control-request> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0))
)

(cl:defclass turtle_control-request (<turtle_control-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turtle_control-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turtle_control-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pro_turtlebot_s-srv:<turtle_control-request> is deprecated: use pro_turtlebot_s-srv:turtle_control-request instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <turtle_control-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pro_turtlebot_s-srv:num-val is deprecated.  Use pro_turtlebot_s-srv:num instead.")
  (num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turtle_control-request>) ostream)
  "Serializes a message object of type '<turtle_control-request>"
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turtle_control-request>) istream)
  "Deserializes a message object of type '<turtle_control-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turtle_control-request>)))
  "Returns string type for a service object of type '<turtle_control-request>"
  "pro_turtlebot_s/turtle_controlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtle_control-request)))
  "Returns string type for a service object of type 'turtle_control-request"
  "pro_turtlebot_s/turtle_controlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turtle_control-request>)))
  "Returns md5sum for a message object of type '<turtle_control-request>"
  "cb5a2ff85b3ab0fa811ff6800544146e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turtle_control-request)))
  "Returns md5sum for a message object of type 'turtle_control-request"
  "cb5a2ff85b3ab0fa811ff6800544146e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turtle_control-request>)))
  "Returns full string definition for message of type '<turtle_control-request>"
  (cl:format cl:nil "int64 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turtle_control-request)))
  "Returns full string definition for message of type 'turtle_control-request"
  (cl:format cl:nil "int64 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turtle_control-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turtle_control-request>))
  "Converts a ROS message object to a list"
  (cl:list 'turtle_control-request
    (cl:cons ':num (num msg))
))
;//! \htmlinclude turtle_control-response.msg.html

(cl:defclass <turtle_control-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass turtle_control-response (<turtle_control-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turtle_control-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turtle_control-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pro_turtlebot_s-srv:<turtle_control-response> is deprecated: use pro_turtlebot_s-srv:turtle_control-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <turtle_control-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pro_turtlebot_s-srv:success-val is deprecated.  Use pro_turtlebot_s-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turtle_control-response>) ostream)
  "Serializes a message object of type '<turtle_control-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turtle_control-response>) istream)
  "Deserializes a message object of type '<turtle_control-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turtle_control-response>)))
  "Returns string type for a service object of type '<turtle_control-response>"
  "pro_turtlebot_s/turtle_controlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtle_control-response)))
  "Returns string type for a service object of type 'turtle_control-response"
  "pro_turtlebot_s/turtle_controlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turtle_control-response>)))
  "Returns md5sum for a message object of type '<turtle_control-response>"
  "cb5a2ff85b3ab0fa811ff6800544146e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turtle_control-response)))
  "Returns md5sum for a message object of type 'turtle_control-response"
  "cb5a2ff85b3ab0fa811ff6800544146e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turtle_control-response>)))
  "Returns full string definition for message of type '<turtle_control-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turtle_control-response)))
  "Returns full string definition for message of type 'turtle_control-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turtle_control-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turtle_control-response>))
  "Converts a ROS message object to a list"
  (cl:list 'turtle_control-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'turtle_control)))
  'turtle_control-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'turtle_control)))
  'turtle_control-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtle_control)))
  "Returns string type for a service object of type '<turtle_control>"
  "pro_turtlebot_s/turtle_control")