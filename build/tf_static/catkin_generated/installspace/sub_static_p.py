#!/usr/bin/env python3

import rospy
from tf2_geometry_msgs import tf2_geometry_msgs
import tf2_ros


if __name__ == "__main__":
    rospy.init_node("sub_static_p")
    buffer = tf2_ros.Buffer()
    sub = tf2_ros.TransformListener(buffer)
    # 该点所属坐标系及坐标
    ps = tf2_geometry_msgs.PointStamped()
    ps.header.stamp = rospy.Time.now()
    ps.header.frame_id = "laser"
    ps.point.x = 2.0
    ps.point.y = 3.0
    ps.point.z = 5.0
    rate = rospy.Rate(10)
    # du = rospy.Duration(2)
    # rospy.sleep(du)

    while not rospy.is_shutdown():
        try:
            # 被转换的坐标点，目标坐标系 ——> 转换后的坐标点
            ps_out = buffer.transform(ps, "base_link")
            rospy.loginfo("the coordinate after transformation is (%.2f,%.2f,%.2f)", ps_out.point.x, ps_out.point.y, ps_out.point.z)
        except Exception as e:
            rospy.logwarn("%s", e)
        
        rate.sleep()