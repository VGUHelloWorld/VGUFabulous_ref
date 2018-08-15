; Auto-generated. Do not edit!


(cl:in-package new_message-msg)


;//! \htmlinclude Ranges.msg.html

(cl:defclass <Ranges> (roslisp-msg-protocol:ros-message)
  ((Range1
    :reader Range1
    :initarg :Range1
    :type cl:float
    :initform 0.0)
   (Range2
    :reader Range2
    :initarg :Range2
    :type cl:float
    :initform 0.0)
   (fusedRange
    :reader fusedRange
    :initarg :fusedRange
    :type cl:float
    :initform 0.0))
)

(cl:defclass Ranges (<Ranges>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ranges>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ranges)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name new_message-msg:<Ranges> is deprecated: use new_message-msg:Ranges instead.")))

(cl:ensure-generic-function 'Range1-val :lambda-list '(m))
(cl:defmethod Range1-val ((m <Ranges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader new_message-msg:Range1-val is deprecated.  Use new_message-msg:Range1 instead.")
  (Range1 m))

(cl:ensure-generic-function 'Range2-val :lambda-list '(m))
(cl:defmethod Range2-val ((m <Ranges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader new_message-msg:Range2-val is deprecated.  Use new_message-msg:Range2 instead.")
  (Range2 m))

(cl:ensure-generic-function 'fusedRange-val :lambda-list '(m))
(cl:defmethod fusedRange-val ((m <Ranges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader new_message-msg:fusedRange-val is deprecated.  Use new_message-msg:fusedRange instead.")
  (fusedRange m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ranges>) ostream)
  "Serializes a message object of type '<Ranges>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Range1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Range2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fusedRange))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ranges>) istream)
  "Deserializes a message object of type '<Ranges>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Range1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Range2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fusedRange) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ranges>)))
  "Returns string type for a message object of type '<Ranges>"
  "new_message/Ranges")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ranges)))
  "Returns string type for a message object of type 'Ranges"
  "new_message/Ranges")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ranges>)))
  "Returns md5sum for a message object of type '<Ranges>"
  "8342471173ce656419074107ac44b4b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ranges)))
  "Returns md5sum for a message object of type 'Ranges"
  "8342471173ce656419074107ac44b4b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ranges>)))
  "Returns full string definition for message of type '<Ranges>"
  (cl:format cl:nil "float32 Range1~%float32 Range2~%float32 fusedRange~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ranges)))
  "Returns full string definition for message of type 'Ranges"
  (cl:format cl:nil "float32 Range1~%float32 Range2~%float32 fusedRange~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ranges>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ranges>))
  "Converts a ROS message object to a list"
  (cl:list 'Ranges
    (cl:cons ':Range1 (Range1 msg))
    (cl:cons ':Range2 (Range2 msg))
    (cl:cons ':fusedRange (fusedRange msg))
))
