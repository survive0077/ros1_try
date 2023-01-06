#!/usr/bin/env python3

import rospy
from std_msgs.msg import String


if __name__ == "__main__":
    rospy.init_node("rename")
    # 全局
    pub1 = rospy.Publisher("/pub1", String, queue_size=10)

    # 相对
    pub2 = rospy.Publisher("pub2", String, queue_size=10)

    # 私有
    pub3 = rospy.Publisher("~pub3", String, queue_size=10)

    while not rospy.is_shutdown():
        pass