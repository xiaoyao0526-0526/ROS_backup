; Auto-generated. Do not edit!


(cl:in-package exp6_524-srv)


;//! \htmlinclude DoSquare-request.msg.html

(cl:defclass <DoSquare-request> (roslisp-msg-protocol:ros-message)
  ((radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0))
)

(cl:defclass DoSquare-request (<DoSquare-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoSquare-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoSquare-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exp6_524-srv:<DoSquare-request> is deprecated: use exp6_524-srv:DoSquare-request instead.")))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <DoSquare-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp6_524-srv:radius-val is deprecated.  Use exp6_524-srv:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoSquare-request>) ostream)
  "Serializes a message object of type '<DoSquare-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoSquare-request>) istream)
  "Deserializes a message object of type '<DoSquare-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoSquare-request>)))
  "Returns string type for a service object of type '<DoSquare-request>"
  "exp6_524/DoSquareRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoSquare-request)))
  "Returns string type for a service object of type 'DoSquare-request"
  "exp6_524/DoSquareRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoSquare-request>)))
  "Returns md5sum for a message object of type '<DoSquare-request>"
  "397e5d9373b2d6be3b1e90928218304b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoSquare-request)))
  "Returns md5sum for a message object of type 'DoSquare-request"
  "397e5d9373b2d6be3b1e90928218304b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoSquare-request>)))
  "Returns full string definition for message of type '<DoSquare-request>"
  (cl:format cl:nil "float32 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoSquare-request)))
  "Returns full string definition for message of type 'DoSquare-request"
  (cl:format cl:nil "float32 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoSquare-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoSquare-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DoSquare-request
    (cl:cons ':radius (radius msg))
))
;//! \htmlinclude DoSquare-response.msg.html

(cl:defclass <DoSquare-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DoSquare-response (<DoSquare-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoSquare-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoSquare-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exp6_524-srv:<DoSquare-response> is deprecated: use exp6_524-srv:DoSquare-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DoSquare-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp6_524-srv:success-val is deprecated.  Use exp6_524-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoSquare-response>) ostream)
  "Serializes a message object of type '<DoSquare-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoSquare-response>) istream)
  "Deserializes a message object of type '<DoSquare-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoSquare-response>)))
  "Returns string type for a service object of type '<DoSquare-response>"
  "exp6_524/DoSquareResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoSquare-response)))
  "Returns string type for a service object of type 'DoSquare-response"
  "exp6_524/DoSquareResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoSquare-response>)))
  "Returns md5sum for a message object of type '<DoSquare-response>"
  "397e5d9373b2d6be3b1e90928218304b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoSquare-response)))
  "Returns md5sum for a message object of type 'DoSquare-response"
  "397e5d9373b2d6be3b1e90928218304b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoSquare-response>)))
  "Returns full string definition for message of type '<DoSquare-response>"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoSquare-response)))
  "Returns full string definition for message of type 'DoSquare-response"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoSquare-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoSquare-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DoSquare-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DoSquare)))
  'DoSquare-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DoSquare)))
  'DoSquare-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoSquare)))
  "Returns string type for a service object of type '<DoSquare>"
  "exp6_524/DoSquare")