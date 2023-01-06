;; Auto-generated. Do not edit!


(when (boundp 'ser_cli::addints)
  (if (not (find-package "SER_CLI"))
    (make-package "SER_CLI"))
  (shadow 'addints (find-package "SER_CLI")))
(unless (find-package "SER_CLI::ADDINTS")
  (make-package "SER_CLI::ADDINTS"))
(unless (find-package "SER_CLI::ADDINTSREQUEST")
  (make-package "SER_CLI::ADDINTSREQUEST"))
(unless (find-package "SER_CLI::ADDINTSRESPONSE")
  (make-package "SER_CLI::ADDINTSRESPONSE"))

(in-package "ROS")





(defclass ser_cli::addintsRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod ser_cli::addintsRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ser_cli::addintsResponse
  :super ros::object
  :slots (_sum ))

(defmethod ser_cli::addintsResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ser_cli::addints
  :super ros::object
  :slots ())

(setf (get ser_cli::addints :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get ser_cli::addints :datatype-) "ser_cli/addints")
(setf (get ser_cli::addints :request) ser_cli::addintsRequest)
(setf (get ser_cli::addints :response) ser_cli::addintsResponse)

(defmethod ser_cli::addintsRequest
  (:response () (instance ser_cli::addintsResponse :init)))

(setf (get ser_cli::addintsRequest :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get ser_cli::addintsRequest :datatype-) "ser_cli/addintsRequest")
(setf (get ser_cli::addintsRequest :definition-)
      "int32 num1
int32 num2
---
int32 sum
")

(setf (get ser_cli::addintsResponse :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get ser_cli::addintsResponse :datatype-) "ser_cli/addintsResponse")
(setf (get ser_cli::addintsResponse :definition-)
      "int32 num1
int32 num2
---
int32 sum
")



(provide :ser_cli/addints "4781436a0c2affec8025955a6041e481")


