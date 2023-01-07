#!/usr/bin/env python3

import rospy
from dynamic_reconfigure.server import Server
from reconfigure_dynamic.cfg import drConfig


def callback(config, level):
    rospy.loginfo("The new number is %d", config.int_param)
    return config


if __name__=="__main__":
    rospy.init_node("dr_server_p")
    server = Server(drConfig, callback)
    rospy.spin()
