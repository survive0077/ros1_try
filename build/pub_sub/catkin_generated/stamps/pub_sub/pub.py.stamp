#! /usr/bin/env python

import rospy
from std_msgs.msg import String

if __name__ == "__main__":
    rospy.init_node("pub_py")
    pub = rospy.Publisher("world", String, queue_size=10)
    msg = String()
    n = 0
    rospy.sleep(3)
    while not rospy.is_shutdown():
        msg.data = "hello" + str(n)
        pub.publish(msg)
        rospy.loginfo("Send %s", msg.data)
        rate = rospy.Rate(10)
        rate.sleep()
        n = n + 1
        
