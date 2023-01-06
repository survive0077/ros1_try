#! /usr/bin/env python

import rospy
import rosbag
from std_msgs.msg import String

if __name__ == "__main__":
    rospy.init_node("write_bag_p")
    bag = rosbag.Bag("hello_p.bag", mode="w")
    msg = String()
    msg.data = "hello world"
    bag.write("/chat", msg)
    bag.write("/chat", msg)
    bag.write("/chat", msg)
    bag.close()
