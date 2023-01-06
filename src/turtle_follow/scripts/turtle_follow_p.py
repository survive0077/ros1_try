#! /usr/bin/env python

import rospy
from tf2_geometry_msgs import tf2_geometry_msgs
import tf2_ros
from geometry_msgs.msg import TransformStamped
from geometry_msgs.msg import Twist
import sys
import math


father = sys.argv[1]
child = sys.argv[2]
turtle_name = sys.argv[1]


if __name__ == "__main__":
    rospy.init_node("sub_multi_p")
    buffer = tf2_ros.Buffer()
    sub = tf2_ros.TransformListener(buffer)
    pub = rospy.Publisher("/" + turtle_name + "/cmd_vel", Twist, queue_size=100)
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        try:
            # 被转换的坐标点，目标坐标系 ——> 转换后的坐标点
            tfs = TransformStamped()
            tfs = buffer.lookup_transform(father, child, rospy.Time(0))
            # rospy.loginfo("father: %s, child: %s, translation: (%.2f,%.2f,%.2f), rotation: (%.2f,%.2f,%.2f,%.2f)",
            #         tfs.header.frame_id,
            #         tfs.child_frame_id,
            #         tfs.transform.translation.x,
            #         tfs.transform.translation.y,
            #         tfs.transform.translation.z,
            #         tfs.transform.rotation.x,
            #         tfs.transform.rotation.y,
            #         tfs.transform.rotation.z,
            #         tfs.transform.rotation.w)
            twist = Twist()
            twist.linear.x = 0.5 * math.sqrt(pow(tfs.transform.translation.x, 2) + pow(tfs.transform.translation.y, 2))
            twist.angular.z = 4 * math.atan2(tfs.transform.translation.y, tfs.transform.translation.x)
            pub.publish(twist)

        except Exception as e:
            rospy.logwarn("%s", e)
        
        rate.sleep()