
(cl:in-package :asdf)

(defsystem "new_message-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Ranges" :depends-on ("_package_Ranges"))
    (:file "_package_Ranges" :depends-on ("_package"))
  ))