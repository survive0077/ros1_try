#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import TransformStamped
import tf.transformations
import tf2_ros


if __name__ == "__main__":
    rospy.init_node("pub_static_p")
    pub = tf2_ros.StaticTransformBroadcaster()
    ts = TransformStamped()
    ts.header.stamp = rospy.Time.now()
    ts.header.frame_id = "base_link"
    ts.child_frame_id = "laser"
    # 坐标系间的相对关系
    ts.transform.translation.x = 0.2
    ts.transform.translation.y = 0.0
    ts.transform.translation.z = 0.5
    # 从欧拉角转换得到四元数
    qtn = tf.transformations.quaternion_from_euler(0, 0, 0)
    ts.transform.rotation.x = qtn[0]
    ts.transform.rotation.y = qtn[1]
    ts.transform.rotation.z = qtn[2]
    ts.transform.rotation.w = qtn[3]

    pub.sendTransform(ts)
    rospy.spin()
