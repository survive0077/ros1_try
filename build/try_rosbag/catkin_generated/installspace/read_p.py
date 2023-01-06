#!/usr/bin/env python3

import rospy
import rosbag
from std_msgs.msg import String

if __name__ == "__main__":
    rospy.init_node("read_bag_p")
    bag = rosbag.Bag("hello_p.bag", mode="r")
    msgs = bag.read_messages("/chat")
    for topic, msg, time in msgs:
        rospy.loginfo("topic:%s, time:%s, message:%s", topic, time, msg.data)
    bag.close()
