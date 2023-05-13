;; Auto-generated. Do not edit!


(when (boundp 'pro001::geometry_msgs)
  (if (not (find-package "PRO001"))
    (make-package "PRO001"))
  (shadow 'geometry_msgs (find-package "PRO001")))
(unless (find-package "PRO001::GEOMETRY_MSGS")
  (make-package "PRO001::GEOMETRY_MSGS"))

(in-package "ROS")
;;//! \htmlinclude geometry_msgs.msg.html


(defclass pro001::geometry_msgs
  :super ros::object
  :slots (_speed ))

(defmethod pro001::geometry_msgs
  (:init
   (&key
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _speed (float __speed))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float64 _speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pro001::geometry_msgs :md5sum-) "4641bb0523a3557209606d9bd91ce33a")
(setf (get pro001::geometry_msgs :datatype-) "pro001/geometry_msgs")
(setf (get pro001::geometry_msgs :definition-)
      "float64 speed


")



(provide :pro001/geometry_msgs "4641bb0523a3557209606d9bd91ce33a")


