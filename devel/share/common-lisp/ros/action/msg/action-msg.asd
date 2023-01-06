
(cl:in-package :asdf)

(defsystem "action-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "addintsAction" :depends-on ("_package_addintsAction"))
    (:file "_package_addintsAction" :depends-on ("_package"))
    (:file "addintsActionFeedback" :depends-on ("_package_addintsActionFeedback"))
    (:file "_package_addintsActionFeedback" :depends-on ("_package"))
    (:file "addintsActionGoal" :depends-on ("_package_addintsActionGoal"))
    (:file "_package_addintsActionGoal" :depends-on ("_package"))
    (:file "addintsActionResult" :depends-on ("_package_addintsActionResult"))
    (:file "_package_addintsActionResult" :depends-on ("_package"))
    (:file "addintsFeedback" :depends-on ("_package_addintsFeedback"))
    (:file "_package_addintsFeedback" :depends-on ("_package"))
    (:file "addintsGoal" :depends-on ("_package_addintsGoal"))
    (:file "_package_addintsGoal" :depends-on ("_package"))
    (:file "addintsResult" :depends-on ("_package_addintsResult"))
    (:file "_package_addintsResult" :depends-on ("_package"))
  ))