#! /usr/bin/env python

import rospy
from dynamic_reconfigure.server import Server
from reconfigure_dynamic.cfg import drConfig


def callback(config, level):
    rospy.loginfo("The new number is %d, %.2f, %s, %d, %d", 
                    config.int_param, 
                    config.double_param, 
                    config.str_param, 
                    config.bool_param, 
                    config.list_param)
    return config


if __name__=="__main__":
    rospy.init_node("dr_server_p")
    server = Server(drConfig, callback)
    rospy.spin()
