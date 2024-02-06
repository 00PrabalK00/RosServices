;; Auto-generated. Do not edit!


(when (boundp 'base_joy_controller_pkg::adcm)
  (if (not (find-package "BASE_JOY_CONTROLLER_PKG"))
    (make-package "BASE_JOY_CONTROLLER_PKG"))
  (shadow 'adcm (find-package "BASE_JOY_CONTROLLER_PKG")))
(unless (find-package "BASE_JOY_CONTROLLER_PKG::ADCM")
  (make-package "BASE_JOY_CONTROLLER_PKG::ADCM"))
(unless (find-package "BASE_JOY_CONTROLLER_PKG::ADCMREQUEST")
  (make-package "BASE_JOY_CONTROLLER_PKG::ADCMREQUEST"))
(unless (find-package "BASE_JOY_CONTROLLER_PKG::ADCMRESPONSE")
  (make-package "BASE_JOY_CONTROLLER_PKG::ADCMRESPONSE"))

(in-package "ROS")





(defclass base_joy_controller_pkg::adcmRequest
  :super ros::object
  :slots (_state ))

(defmethod base_joy_controller_pkg::adcmRequest
  (:init
   (&key
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&optional (__state :null))
   (if (not (eq __state :null)) (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass base_joy_controller_pkg::adcmResponse
  :super ros::object
  :slots (_arm ))

(defmethod base_joy_controller_pkg::adcmResponse
  (:init
   (&key
    ((:arm __arm) nil)
    )
   (send-super :init)
   (setq _arm __arm)
   self)
  (:arm
   (&optional (__arm :null))
   (if (not (eq __arm :null)) (setq _arm __arm)) _arm)
  (:serialization-length
   ()
   (+
    ;; bool _arm
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _arm
       (if _arm (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _arm
     (setq _arm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass base_joy_controller_pkg::adcm
  :super ros::object
  :slots ())

(setf (get base_joy_controller_pkg::adcm :md5sum-) "a38fbaba7afb595971b872379e21f3c7")
(setf (get base_joy_controller_pkg::adcm :datatype-) "base_joy_controller_pkg/adcm")
(setf (get base_joy_controller_pkg::adcm :request) base_joy_controller_pkg::adcmRequest)
(setf (get base_joy_controller_pkg::adcm :response) base_joy_controller_pkg::adcmResponse)

(defmethod base_joy_controller_pkg::adcmRequest
  (:response () (instance base_joy_controller_pkg::adcmResponse :init)))

(setf (get base_joy_controller_pkg::adcmRequest :md5sum-) "a38fbaba7afb595971b872379e21f3c7")
(setf (get base_joy_controller_pkg::adcmRequest :datatype-) "base_joy_controller_pkg/adcmRequest")
(setf (get base_joy_controller_pkg::adcmRequest :definition-)
      "bool state
---
bool arm



")

(setf (get base_joy_controller_pkg::adcmResponse :md5sum-) "a38fbaba7afb595971b872379e21f3c7")
(setf (get base_joy_controller_pkg::adcmResponse :datatype-) "base_joy_controller_pkg/adcmResponse")
(setf (get base_joy_controller_pkg::adcmResponse :definition-)
      "bool state
---
bool arm



")



(provide :base_joy_controller_pkg/adcm "a38fbaba7afb595971b872379e21f3c7")


