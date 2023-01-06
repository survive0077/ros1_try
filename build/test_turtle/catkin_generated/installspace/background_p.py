#!/usr/bin/env python3
import rospy


if __name__ == "__maim__":
    rospy.init_node("background_p")
    rospy.set_param("/turtlesim/background_r", 100)
    rospy.set_param("/turtlesim/background_g", 110)
    rospy.set_param("/turtlesim/background_b", 120)