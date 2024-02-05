
(cl:in-package :asdf)

(defsystem "base_joy_controller_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "adcm" :depends-on ("_package_adcm"))
    (:file "_package_adcm" :depends-on ("_package"))
    (:file "modes" :depends-on ("_package_modes"))
    (:file "_package_modes" :depends-on ("_package"))
  ))