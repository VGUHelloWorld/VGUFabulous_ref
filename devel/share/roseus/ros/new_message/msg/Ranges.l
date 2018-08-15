;; Auto-generated. Do not edit!


(when (boundp 'new_message::Ranges)
  (if (not (find-package "NEW_MESSAGE"))
    (make-package "NEW_MESSAGE"))
  (shadow 'Ranges (find-package "NEW_MESSAGE")))
(unless (find-package "NEW_MESSAGE::RANGES")
  (make-package "NEW_MESSAGE::RANGES"))

(in-package "ROS")
;;//! \htmlinclude Ranges.msg.html


(defclass new_message::Ranges
  :super ros::object
  :slots (_Range1 _Range2 _fusedRange ))

(defmethod new_message::Ranges
  (:init
   (&key
    ((:Range1 __Range1) 0.0)
    ((:Range2 __Range2) 0.0)
    ((:fusedRange __fusedRange) 0.0)
    )
   (send-super :init)
   (setq _Range1 (float __Range1))
   (setq _Range2 (float __Range2))
   (setq _fusedRange (float __fusedRange))
   self)
  (:Range1
   (&optional __Range1)
   (if __Range1 (setq _Range1 __Range1)) _Range1)
  (:Range2
   (&optional __Range2)
   (if __Range2 (setq _Range2 __Range2)) _Range2)
  (:fusedRange
   (&optional __fusedRange)
   (if __fusedRange (setq _fusedRange __fusedRange)) _fusedRange)
  (:serialization-length
   ()
   (+
    ;; float32 _Range1
    4
    ;; float32 _Range2
    4
    ;; float32 _fusedRange
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Range1
       (sys::poke _Range1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Range2
       (sys::poke _Range2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fusedRange
       (sys::poke _fusedRange (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Range1
     (setq _Range1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Range2
     (setq _Range2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fusedRange
     (setq _fusedRange (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get new_message::Ranges :md5sum-) "8342471173ce656419074107ac44b4b4")
(setf (get new_message::Ranges :datatype-) "new_message/Ranges")
(setf (get new_message::Ranges :definition-)
      "float32 Range1
float32 Range2
float32 fusedRange

")



(provide :new_message/Ranges "8342471173ce656419074107ac44b4b4")


