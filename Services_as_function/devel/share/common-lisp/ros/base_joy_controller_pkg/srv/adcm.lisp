; Auto-generated. Do not edit!


(cl:in-package base_joy_controller_pkg-srv)


;//! \htmlinclude adcm-request.msg.html

(cl:defclass <adcm-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass adcm-request (<adcm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <adcm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'adcm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_joy_controller_pkg-srv:<adcm-request> is deprecated: use base_joy_controller_pkg-srv:adcm-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <adcm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_joy_controller_pkg-srv:state-val is deprecated.  Use base_joy_controller_pkg-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <adcm-request>) ostream)
  "Serializes a message object of type '<adcm-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <adcm-request>) istream)
  "Deserializes a message object of type '<adcm-request>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<adcm-request>)))
  "Returns string type for a service object of type '<adcm-request>"
  "base_joy_controller_pkg/adcmRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'adcm-request)))
  "Returns string type for a service object of type 'adcm-request"
  "base_joy_controller_pkg/adcmRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<adcm-request>)))
  "Returns md5sum for a message object of type '<adcm-request>"
  "a38fbaba7afb595971b872379e21f3c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'adcm-request)))
  "Returns md5sum for a message object of type 'adcm-request"
  "a38fbaba7afb595971b872379e21f3c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<adcm-request>)))
  "Returns full string definition for message of type '<adcm-request>"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'adcm-request)))
  "Returns full string definition for message of type 'adcm-request"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <adcm-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <adcm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'adcm-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude adcm-response.msg.html

(cl:defclass <adcm-response> (roslisp-msg-protocol:ros-message)
  ((arm
    :reader arm
    :initarg :arm
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass adcm-response (<adcm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <adcm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'adcm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_joy_controller_pkg-srv:<adcm-response> is deprecated: use base_joy_controller_pkg-srv:adcm-response instead.")))

(cl:ensure-generic-function 'arm-val :lambda-list '(m))
(cl:defmethod arm-val ((m <adcm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_joy_controller_pkg-srv:arm-val is deprecated.  Use base_joy_controller_pkg-srv:arm instead.")
  (arm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <adcm-response>) ostream)
  "Serializes a message object of type '<adcm-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'arm) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <adcm-response>) istream)
  "Deserializes a message object of type '<adcm-response>"
    (cl:setf (cl:slot-value msg 'arm) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<adcm-response>)))
  "Returns string type for a service object of type '<adcm-response>"
  "base_joy_controller_pkg/adcmResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'adcm-response)))
  "Returns string type for a service object of type 'adcm-response"
  "base_joy_controller_pkg/adcmResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<adcm-response>)))
  "Returns md5sum for a message object of type '<adcm-response>"
  "a38fbaba7afb595971b872379e21f3c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'adcm-response)))
  "Returns md5sum for a message object of type 'adcm-response"
  "a38fbaba7afb595971b872379e21f3c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<adcm-response>)))
  "Returns full string definition for message of type '<adcm-response>"
  (cl:format cl:nil "bool arm~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'adcm-response)))
  "Returns full string definition for message of type 'adcm-response"
  (cl:format cl:nil "bool arm~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <adcm-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <adcm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'adcm-response
    (cl:cons ':arm (arm msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'adcm)))
  'adcm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'adcm)))
  'adcm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'adcm)))
  "Returns string type for a service object of type '<adcm>"
  "base_joy_controller_pkg/adcm")