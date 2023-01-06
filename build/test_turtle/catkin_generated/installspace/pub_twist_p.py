#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist


if __name__ == "__main__":
    rospy.init_node("circle_p")
    pub = rospy.Publisher("/turtle1/cmd_vel", Twist, queue_size=10)
    tw = Twist()
    tw.angular.x = 0.0
    tw.angular.y = 0.0
    tw.angular.z = 1.0
    tw.linear.x = 1.0
    tw.linear.y = 0.0
    tw.linear.z = 0.0
    rate = rospy.Rate(10)
    while not rospy.is_shutdown():
        pub.publish(tw)
        rate.sleep()
