#! /usr/bin/env python

import rospy
from std_msgs.msg import String


def callback(msg):
    rospy.loginfo("Receive %s", msg.data)


if __name__ == "__main__":
    rospy.init_node("sub_py")
    sub = rospy.Subscriber("world", String, callback, queue_size=10)
    rospy.spin()