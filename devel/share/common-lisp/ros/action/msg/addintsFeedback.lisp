; Auto-generated. Do not edit!


(cl:in-package action-msg)


;//! \htmlinclude addintsFeedback.msg.html

(cl:defclass <addintsFeedback> (roslisp-msg-protocol:ros-message)
  ((percent
    :reader percent
    :initarg :percent
    :type cl:float
    :initform 0.0))
)

(cl:defclass addintsFeedback (<addintsFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <addintsFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'addintsFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name action-msg:<addintsFeedback> is deprecated: use action-msg:addintsFeedback instead.")))

(cl:ensure-generic-function 'percent-val :lambda-list '(m))
(cl:defmethod percent-val ((m <addintsFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader action-msg:percent-val is deprecated.  Use action-msg:percent instead.")
  (percent m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <addintsFeedback>) ostream)
  "Serializes a message object of type '<addintsFeedback>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <addintsFeedback>) istream)
  "Deserializes a message object of type '<addintsFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percent) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<addintsFeedback>)))
  "Returns string type for a message object of type '<addintsFeedback>"
  "action/addintsFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addintsFeedback)))
  "Returns string type for a message object of type 'addintsFeedback"
  "action/addintsFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<addintsFeedback>)))
  "Returns md5sum for a message object of type '<addintsFeedback>"
  "d6e607cac4f6b2d41392a1a3b72e4390")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'addintsFeedback)))
  "Returns md5sum for a message object of type 'addintsFeedback"
  "d6e607cac4f6b2d41392a1a3b72e4390")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<addintsFeedback>)))
  "Returns full string definition for message of type '<addintsFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# 连续返回变量~%float64 percent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'addintsFeedback)))
  "Returns full string definition for message of type 'addintsFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# 连续返回变量~%float64 percent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <addintsFeedback>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <addintsFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'addintsFeedback
    (cl:cons ':percent (percent msg))
))