#!/usr/bin/env python3

import rospy


if __name__ == "__main__":
    rospy.init_node("del_param_p")
    
    try:
        rospy.delete_param("radius_py")
    except Exception as e:
        rospy.loginfo("False")
