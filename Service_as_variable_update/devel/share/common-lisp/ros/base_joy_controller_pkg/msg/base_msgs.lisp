; Auto-generated. Do not edit!


(cl:in-package base_joy_controller_pkg-msg)


;//! \htmlinclude base_msgs.msg.html

(cl:defclass <base_msgs> (roslisp-msg-protocol:ros-message)
  ((arm
    :reader arm
    :initarg :arm
    :type cl:boolean
    :initform cl:nil)
   (mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (forward
    :reader forward
    :initarg :forward
    :type cl:fixnum
    :initform 0)
   (lateral
    :reader lateral
    :initarg :lateral
    :type cl:fixnum
    :initform 0)
   (thrust
    :reader thrust
    :initarg :thrust
    :type cl:fixnum
    :initform 0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:fixnum
    :initform 0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:fixnum
    :initform 0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:fixnum
    :initform 0)
   (servo1
    :reader servo1
    :initarg :servo1
    :type cl:fixnum
    :initform 0)
   (servo2
    :reader servo2
    :initarg :servo2
    :type cl:fixnum
    :initform 0))
)

(cl:defclass base_msgs (<base_msgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <base_msgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'base_msgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_joy_controller_pkg-msg:<base_msgs> is deprecated: use base_joy_controller_pkg-msg:base_msgs instead.")))

(cl:ensure-generic-function 'arm-val :lambda-list '(m))
(cl:defmethod arm-val ((m <base_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_joy_controller_pkg-msg:arm-val is deprecated.  Use base_joy_controller_pkg-msg:arm instead.")
  (arm m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <base_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_joy_controller_pkg-msg:mode-val is deprecated.  Use base_joy_controller_pkg-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'forward-val :lambda-list '(m))
(cl:defmethod forward-val ((m <base_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_joy_controller_pkg-msg:forward-val is deprecated.  Use base_joy_controller_pkg-msg:forward instead.")
  (forward m))

(cl:ensure-generic-function 'lateral-val :lambda-list '(m))
(cl:defmethod lateral-val ((m <base_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_joy_controller_pkg-msg:lateral-val is deprecated.  Use base_joy_controller_pkg-msg:lateral instead.")
  (lateral m))

(cl:ensure-generic-function 'thrust-val :lambda-list '(m))
(cl:defmethod thrust-val ((m <base_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_joy_controller_pkg-msg:thrust-val is deprecated.  Use base_joy_controller_pkg-msg:thrust instead.")
  (thrust m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <base_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_joy_controller_pkg-msg:pitch-val is deprecated.  Use base_joy_controller_pkg-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <base_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_joy_controller_pkg-msg:roll-val is deprecated.  Use base_joy_controller_pkg-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <base_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_joy_controller_pkg-msg:yaw-val is deprecated.  Use base_joy_controller_pkg-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'servo1-val :lambda-list '(m))
(cl:defmethod servo1-val ((m <base_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_joy_controller_pkg-msg:servo1-val is deprecated.  Use base_joy_controller_pkg-msg:servo1 instead.")
  (servo1 m))

(cl:ensure-generic-function 'servo2-val :lambda-list '(m))
(cl:defmethod servo2-val ((m <base_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_joy_controller_pkg-msg:servo2-val is deprecated.  Use base_joy_controller_pkg-msg:servo2 instead.")
  (servo2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <base_msgs>) ostream)
  "Serializes a message object of type '<base_msgs>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'arm) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:let* ((signed (cl:slot-value msg 'forward)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lateral)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'thrust)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pitch)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'roll)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'yaw)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'servo1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'servo2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <base_msgs>) istream)
  "Deserializes a message object of type '<base_msgs>"
    (cl:setf (cl:slot-value msg 'arm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'forward) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lateral) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'thrust) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pitch) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roll) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yaw) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'servo1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'servo2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<base_msgs>)))
  "Returns string type for a message object of type '<base_msgs>"
  "base_joy_controller_pkg/base_msgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'base_msgs)))
  "Returns string type for a message object of type 'base_msgs"
  "base_joy_controller_pkg/base_msgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<base_msgs>)))
  "Returns md5sum for a message object of type '<base_msgs>"
  "fd03263c66e74cb889ba23a832fbae12")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'base_msgs)))
  "Returns md5sum for a message object of type 'base_msgs"
  "fd03263c66e74cb889ba23a832fbae12")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<base_msgs>)))
  "Returns full string definition for message of type '<base_msgs>"
  (cl:format cl:nil "bool arm~%string mode~%int16 forward~%int16 lateral~%int16 thrust~%int16 pitch~%int16 roll~%int16 yaw~%int16 servo1~%int16 servo2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'base_msgs)))
  "Returns full string definition for message of type 'base_msgs"
  (cl:format cl:nil "bool arm~%string mode~%int16 forward~%int16 lateral~%int16 thrust~%int16 pitch~%int16 roll~%int16 yaw~%int16 servo1~%int16 servo2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <base_msgs>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'mode))
     2
     2
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <base_msgs>))
  "Converts a ROS message object to a list"
  (cl:list 'base_msgs
    (cl:cons ':arm (arm msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':forward (forward msg))
    (cl:cons ':lateral (lateral msg))
    (cl:cons ':thrust (thrust msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':servo1 (servo1 msg))
    (cl:cons ':servo2 (servo2 msg))
))
