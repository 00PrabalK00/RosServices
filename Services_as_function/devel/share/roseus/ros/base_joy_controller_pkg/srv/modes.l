;; Auto-generated. Do not edit!


(when (boundp 'base_joy_controller_pkg::modes)
  (if (not (find-package "BASE_JOY_CONTROLLER_PKG"))
    (make-package "BASE_JOY_CONTROLLER_PKG"))
  (shadow 'modes (find-package "BASE_JOY_CONTROLLER_PKG")))
(unless (find-package "BASE_JOY_CONTROLLER_PKG::MODES")
  (make-package "BASE_JOY_CONTROLLER_PKG::MODES"))
(unless (find-package "BASE_JOY_CONTROLLER_PKG::MODESREQUEST")
  (make-package "BASE_JOY_CONTROLLER_PKG::MODESREQUEST"))
(unless (find-package "BASE_JOY_CONTROLLER_PKG::MODESRESPONSE")
  (make-package "BASE_JOY_CONTROLLER_PKG::MODESRESPONSE"))

(in-package "ROS")





(defclass base_joy_controller_pkg::modesRequest
  :super ros::object
  :slots (_mode ))

(defmethod base_joy_controller_pkg::modesRequest
  (:init
   (&key
    ((:mode __mode) "")
    )
   (send-super :init)
   (setq _mode (string __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass base_joy_controller_pkg::modesResponse
  :super ros::object
  :slots (_currmode ))

(defmethod base_joy_controller_pkg::modesResponse
  (:init
   (&key
    ((:currmode __currmode) "")
    )
   (send-super :init)
   (setq _currmode (string __currmode))
   self)
  (:currmode
   (&optional __currmode)
   (if __currmode (setq _currmode __currmode)) _currmode)
  (:serialization-length
   ()
   (+
    ;; string _currmode
    4 (length _currmode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _currmode
       (write-long (length _currmode) s) (princ _currmode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _currmode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _currmode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass base_joy_controller_pkg::modes
  :super ros::object
  :slots ())

(setf (get base_joy_controller_pkg::modes :md5sum-) "2bc158173e2185ec21215d46ee65d595")
(setf (get base_joy_controller_pkg::modes :datatype-) "base_joy_controller_pkg/modes")
(setf (get base_joy_controller_pkg::modes :request) base_joy_controller_pkg::modesRequest)
(setf (get base_joy_controller_pkg::modes :response) base_joy_controller_pkg::modesResponse)

(defmethod base_joy_controller_pkg::modesRequest
  (:response () (instance base_joy_controller_pkg::modesResponse :init)))

(setf (get base_joy_controller_pkg::modesRequest :md5sum-) "2bc158173e2185ec21215d46ee65d595")
(setf (get base_joy_controller_pkg::modesRequest :datatype-) "base_joy_controller_pkg/modesRequest")
(setf (get base_joy_controller_pkg::modesRequest :definition-)
      "string mode
---
string currmode
")

(setf (get base_joy_controller_pkg::modesResponse :md5sum-) "2bc158173e2185ec21215d46ee65d595")
(setf (get base_joy_controller_pkg::modesResponse :datatype-) "base_joy_controller_pkg/modesResponse")
(setf (get base_joy_controller_pkg::modesResponse :definition-)
      "string mode
---
string currmode
")



(provide :base_joy_controller_pkg/modes "2bc158173e2185ec21215d46ee65d595")


