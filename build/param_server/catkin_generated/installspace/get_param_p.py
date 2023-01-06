#!/usr/bin/env python3

import rospy


if __name__ == "__main__":
    rospy.init_node("set_param_p")
    
    # get_param
    radius1 = rospy.get_param("radius_py", 0.00)
    radius2 = rospy.get_param("radius_py123", 0.00)
    rospy.loginfo("Radius1 is %.2f m", radius1)
    rospy.loginfo("Radius2 is %.2f m", radius2)
    
    # get_param_cached
    radius3 = rospy.get_param("radius_py123", 0.00)
    rospy.loginfo("Radius3 is %.2f m", radius3)

    # get_param_names
    names = rospy.get_param_names()
    for name in names:
        rospy.loginfo("Name is %s", name)

    # has_param
    flag = rospy.has_param("radius_py")
    rospy.loginfo("Result %d", flag)

    # search_param
    key = rospy.search_param("radius_py")
    rospy.loginfo("Find %s", key)