; Auto-generated. Do not edit!


(cl:in-package base_joy_controller_pkg-srv)


;//! \htmlinclude modes-request.msg.html

(cl:defclass <modes-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform ""))
)

(cl:defclass modes-request (<modes-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <modes-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'modes-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_joy_controller_pkg-srv:<modes-request> is deprecated: use base_joy_controller_pkg-srv:modes-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <modes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_joy_controller_pkg-srv:mode-val is deprecated.  Use base_joy_controller_pkg-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <modes-request>) ostream)
  "Serializes a message object of type '<modes-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <modes-request>) istream)
  "Deserializes a message object of type '<modes-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<modes-request>)))
  "Returns string type for a service object of type '<modes-request>"
  "base_joy_controller_pkg/modesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'modes-request)))
  "Returns string type for a service object of type 'modes-request"
  "base_joy_controller_pkg/modesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<modes-request>)))
  "Returns md5sum for a message object of type '<modes-request>"
  "2bc158173e2185ec21215d46ee65d595")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'modes-request)))
  "Returns md5sum for a message object of type 'modes-request"
  "2bc158173e2185ec21215d46ee65d595")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<modes-request>)))
  "Returns full string definition for message of type '<modes-request>"
  (cl:format cl:nil "string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'modes-request)))
  "Returns full string definition for message of type 'modes-request"
  (cl:format cl:nil "string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <modes-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <modes-request>))
  "Converts a ROS message object to a list"
  (cl:list 'modes-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude modes-response.msg.html

(cl:defclass <modes-response> (roslisp-msg-protocol:ros-message)
  ((currmode
    :reader currmode
    :initarg :currmode
    :type cl:string
    :initform ""))
)

(cl:defclass modes-response (<modes-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <modes-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'modes-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_joy_controller_pkg-srv:<modes-response> is deprecated: use base_joy_controller_pkg-srv:modes-response instead.")))

(cl:ensure-generic-function 'currmode-val :lambda-list '(m))
(cl:defmethod currmode-val ((m <modes-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_joy_controller_pkg-srv:currmode-val is deprecated.  Use base_joy_controller_pkg-srv:currmode instead.")
  (currmode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <modes-response>) ostream)
  "Serializes a message object of type '<modes-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'currmode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'currmode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <modes-response>) istream)
  "Deserializes a message object of type '<modes-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'currmode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'currmode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<modes-response>)))
  "Returns string type for a service object of type '<modes-response>"
  "base_joy_controller_pkg/modesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'modes-response)))
  "Returns string type for a service object of type 'modes-response"
  "base_joy_controller_pkg/modesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<modes-response>)))
  "Returns md5sum for a message object of type '<modes-response>"
  "2bc158173e2185ec21215d46ee65d595")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'modes-response)))
  "Returns md5sum for a message object of type 'modes-response"
  "2bc158173e2185ec21215d46ee65d595")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<modes-response>)))
  "Returns full string definition for message of type '<modes-response>"
  (cl:format cl:nil "string currmode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'modes-response)))
  "Returns full string definition for message of type 'modes-response"
  (cl:format cl:nil "string currmode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <modes-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'currmode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <modes-response>))
  "Converts a ROS message object to a list"
  (cl:list 'modes-response
    (cl:cons ':currmode (currmode msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'modes)))
  'modes-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'modes)))
  'modes-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'modes)))
  "Returns string type for a service object of type '<modes>"
  "base_joy_controller_pkg/modes")