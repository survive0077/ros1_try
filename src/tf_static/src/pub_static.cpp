#include"ros/ros.h"
#include"tf2_ros/static_transform_broadcaster.h"
#include"geometry_msgs/TransformStamped.h"
#include"tf2/LinearMath/Quaternion.h"


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "pub_static");
    ros::NodeHandle nh;
    // 静态坐标广播
    tf2_ros::StaticTransformBroadcaster pub;
    geometry_msgs::TransformStamped tfs;
    tfs.header.stamp = ros::Time::now();
    // 坐标系中被参考的基坐标系
    tfs.header.frame_id = "base_link";
    // 次坐标系
    tfs.child_frame_id = "laser";
    // 雷达相对于基坐标系的偏移量
    tfs.transform.translation.x = 0.2;
    tfs.transform.translation.y = 0.0;
    tfs.transform.translation.z = 0.5;
    // 四元数，需根据欧拉角转换
    // 设置四元数对象
    tf2::Quaternion qtn;
    // 设置翻滚、俯仰、偏航，单位rad
    qtn.setRPY(0, 0, 0);

    tfs.transform.rotation.x = qtn.getX();
    tfs.transform.rotation.y = qtn.getY();
    tfs.transform.rotation.z = qtn.getZ();
    tfs.transform.rotation.w = qtn.getW();

    pub.sendTransform(tfs);
    ros::spin();

    return 0;
}
