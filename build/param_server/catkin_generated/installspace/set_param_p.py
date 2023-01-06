#!/usr/bin/env python3

import rospy


if __name__ == "__main__":
    rospy.init_node("set_param_p")
    rospy.set_param("radius_py", 0.15)
