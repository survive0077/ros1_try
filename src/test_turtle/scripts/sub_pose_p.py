#! /us/bn/env python

import rospy
from turtlesim.msg import Pose


def callback(pose):
    rospy.loginfo("Pose is -> x: %.2f, y: %.2f, theta: %.2f, angular: %.2f, linear: %.2f",
     pose.x, pose.y, pose.theta, pose.angular_velocity, pose.linear_velocity)


if __name__ == "__main__":
    rospy.init_node("pose_p")
    sub = rospy.Subscriber("/turtle1/pose", Pose, callback, queue_size=10)
    rospy.spin()
