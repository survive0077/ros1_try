#!/usr/bin/env python3

import rospy
from turtlesim.msg import Pose
import tf2_ros
from geometry_msgs.msg import TransformStamped
import tf.transformations


def callback(pose):
    pub = tf2_ros.TransformBroadcaster()
    tfs = TransformStamped()
    tfs.header.frame_id = "world"
    tfs.child_frame_id = "turtle1"
    tfs.header.stamp = rospy.Time.now()
    tfs.transform.translation.x = pose.x
    tfs.transform.translation.y = pose.y
    tfs.transform.translation.z = 0.0

    qtn = tf.transformations.quaternion_from_euler(0, 0, pose.theta)
    tfs.transform.rotation.x = qtn[0]
    tfs.transform.rotation.y = qtn[1]
    tfs.transform.rotation.z = qtn[2]
    tfs.transform.rotation.w = qtn[3]

    pub.sendTransform(tfs)


if __name__ == "__main__":
    rospy.init_node("pub_dynamic_p")
    sub = rospy.Subscriber("/turtle1/pose", Pose, callback, queue_size=100)
    rospy.spin()