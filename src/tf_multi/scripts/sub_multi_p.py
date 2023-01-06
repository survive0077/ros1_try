#! /usr/bin/env python

import rospy
from tf2_geometry_msgs import tf2_geometry_msgs
import tf2_ros
from geometry_msgs.msg import TransformStamped


if __name__ == "__main__":
    rospy.init_node("sub_multi_p")
    buffer = tf2_ros.Buffer()
    sub = tf2_ros.TransformListener(buffer)
    # 该点所属坐标系及坐标
    point_at_son1 = tf2_geometry_msgs.PointStamped()
    point_at_son1.header.stamp = rospy.Time.now()
    point_at_son1.header.frame_id = "son1"
    point_at_son1.point.x = 1.0
    point_at_son1.point.y = 2.0
    point_at_son1.point.z = 3.0
    rate = rospy.Rate(10)
    # du = rospy.Duration(2)
    # rospy.sleep(du)

    while not rospy.is_shutdown():
        try:
            # 被转换的坐标点，目标坐标系 ——> 转换后的坐标点
            tfs = TransformStamped()
            tfs = buffer.lookup_transform("son2", "son1", rospy.Time(0))
            rospy.loginfo("son1 to son2 : father: %s, child: %s, translation: (%.2f,%.2f,%.2f), rotation: (%.2f,%.2f,%.2f,%.2f)",
                    tfs.header.frame_id,
                    tfs.child_frame_id,
                    tfs.transform.translation.x,
                    tfs.transform.translation.y,
                    tfs.transform.translation.z,
                    tfs.transform.rotation.x,
                    tfs.transform.rotation.y,
                    tfs.transform.rotation.z,
                    tfs.transform.rotation.w)
            point_at_son2 = buffer.transform(point_at_son1, "son2")
            rospy.loginfo("Coordinate at son2 is (%.2f,%.2f,%.2f)",
            point_at_son2.point.x, point_at_son2.point.y, point_at_son2.point.z)
        except Exception as e:
            rospy.logwarn("%s", e)
        
        rate.sleep()