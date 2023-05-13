;; Auto-generated. Do not edit!


(when (boundp 'pro_turtlebot_s::turtle_control)
  (if (not (find-package "PRO_TURTLEBOT_S"))
    (make-package "PRO_TURTLEBOT_S"))
  (shadow 'turtle_control (find-package "PRO_TURTLEBOT_S")))
(unless (find-package "PRO_TURTLEBOT_S::TURTLE_CONTROL")
  (make-package "PRO_TURTLEBOT_S::TURTLE_CONTROL"))
(unless (find-package "PRO_TURTLEBOT_S::TURTLE_CONTROLREQUEST")
  (make-package "PRO_TURTLEBOT_S::TURTLE_CONTROLREQUEST"))
(unless (find-package "PRO_TURTLEBOT_S::TURTLE_CONTROLRESPONSE")
  (make-package "PRO_TURTLEBOT_S::TURTLE_CONTROLRESPONSE"))

(in-package "ROS")





(defclass pro_turtlebot_s::turtle_controlRequest
  :super ros::object
  :slots (_num ))

(defmethod pro_turtlebot_s::turtle_controlRequest
  (:init
   (&key
    ((:num __num) 0)
    )
   (send-super :init)
   (setq _num (round __num))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:serialization-length
   ()
   (+
    ;; int64 _num
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num) (= (length (_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num . bv) 0) 0) s)
              (write-long (ash (elt (_num . bv) 1) -1) s))
             ((and (class _num) (= (length (_num . bv)) 1)) ;; big1
              (write-long (elt (_num . bv) 0) s)
              (write-long (if (>= _num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num s)(write-long (if (>= _num 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _num
#+(or :alpha :irix6 :x86_64)
      (setf _num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass pro_turtlebot_s::turtle_controlResponse
  :super ros::object
  :slots (_success ))

(defmethod pro_turtlebot_s::turtle_controlResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pro_turtlebot_s::turtle_control
  :super ros::object
  :slots ())

(setf (get pro_turtlebot_s::turtle_control :md5sum-) "cb5a2ff85b3ab0fa811ff6800544146e")
(setf (get pro_turtlebot_s::turtle_control :datatype-) "pro_turtlebot_s/turtle_control")
(setf (get pro_turtlebot_s::turtle_control :request) pro_turtlebot_s::turtle_controlRequest)
(setf (get pro_turtlebot_s::turtle_control :response) pro_turtlebot_s::turtle_controlResponse)

(defmethod pro_turtlebot_s::turtle_controlRequest
  (:response () (instance pro_turtlebot_s::turtle_controlResponse :init)))

(setf (get pro_turtlebot_s::turtle_controlRequest :md5sum-) "cb5a2ff85b3ab0fa811ff6800544146e")
(setf (get pro_turtlebot_s::turtle_controlRequest :datatype-) "pro_turtlebot_s/turtle_controlRequest")
(setf (get pro_turtlebot_s::turtle_controlRequest :definition-)
      "int64 num
---
bool success
")

(setf (get pro_turtlebot_s::turtle_controlResponse :md5sum-) "cb5a2ff85b3ab0fa811ff6800544146e")
(setf (get pro_turtlebot_s::turtle_controlResponse :datatype-) "pro_turtlebot_s/turtle_controlResponse")
(setf (get pro_turtlebot_s::turtle_controlResponse :definition-)
      "int64 num
---
bool success
")



(provide :pro_turtlebot_s/turtle_control "cb5a2ff85b3ab0fa811ff6800544146e")


