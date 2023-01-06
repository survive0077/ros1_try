#include"ros/ros.h"
#include"turtlesim/Pose.h"
#include"tf2_ros/transform_broadcaster.h"
#include"geometry_msgs/TransformStamped.h"
#include"tf2/LinearMath/Quaternion.h"


void callback(const turtlesim::Pose::ConstPtr &pose)
{
    // 静态变量，每次调用使用同一个pub对象，防止重复新建
    static tf2_ros::TransformBroadcaster pub;
    geometry_msgs::TransformStamped tfs;
    tfs.header.frame_id = "world";
    tfs.header.stamp = ros::Time::now();
    tfs.child_frame_id = "turtle1";
    // 坐标系偏移量设置，乌龟为二维平面运动
    tfs.transform.translation.x = pose->x;
    tfs.transform.translation.y = pose->y;
    tfs.transform.translation.z = 0.0;
    // 欧拉角设置，并转换为四元数，乌龟只有绕Z轴的偏航，其余为0
    tf2::Quaternion qtn;
    qtn.setRPY(0, 0, pose->theta);
    // 四元数设置
    tfs.transform.rotation.x = qtn.getX();
    tfs.transform.rotation.y = qtn.getY();
    tfs.transform.rotation.z = qtn.getZ();
    tfs.transform.rotation.w = qtn.getW();

    pub.sendTransform(tfs);
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "pub_dynamic");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("/turtle1/pose", 100, callback);

    ros::spin();
    return 0;
}

