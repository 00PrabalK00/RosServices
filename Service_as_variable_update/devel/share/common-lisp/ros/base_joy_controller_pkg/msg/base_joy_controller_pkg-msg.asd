
(cl:in-package :asdf)

(defsystem "base_joy_controller_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "base_msgs" :depends-on ("_package_base_msgs"))
    (:file "_package_base_msgs" :depends-on ("_package"))
  ))