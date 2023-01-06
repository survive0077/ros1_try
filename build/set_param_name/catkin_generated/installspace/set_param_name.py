#!/usr/bin/env python3

import rospy


if __name__ == "__main__":
    rospy.init_node("set_param")
    # 全局
    rospy.set_param("A", 100)
    # 相对
    rospy.set_param("/B", 110)
    # 私有
    rospy.set_param("~C", 120)
