#include"ros/ros.h"
#include"tf2_ros/buffer.h"
#include"tf2_ros/transform_listener.h"
#include"geometry_msgs/PoseStamped.h"
#include"tf2_geometry_msgs/tf2_geometry_msgs.h"
#include"geometry_msgs/TransformStamped.h"


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "sub_multi");
    ros::NodeHandle nh;
    tf2_ros::Buffer buffer;
    tf2_ros::TransformListener sub(buffer);
    // 坐标点设置
    geometry_msgs::PointStamped point_at_son1;
    point_at_son1.header.frame_id = "son1";
    point_at_son1.header.stamp = ros::Time::now();
    point_at_son1.point.x = 1;
    point_at_son1.point.y = 2;
    point_at_son1.point.z = 3;

    ros::Rate rate(10);
    while (ros::ok())
    {
        try
        {
            // 计算son1与son2坐标系间的相对关系，传入参数顺序：目标坐标系，源坐标系，时间
            geometry_msgs::TransformStamped tfs;
            tfs = buffer.lookupTransform("son2", "son1", ros::Time(0));
            ROS_INFO("son1 to son2 : father: %s, child: %s, translation: (%.2f,%.2f,%.2f), rotation: (%.2f,%.2f,%.2f,%.2f)",
                    tfs.header.frame_id.c_str(),
                    tfs.child_frame_id.c_str(),
                    tfs.transform.translation.x,
                    tfs.transform.translation.y,
                    tfs.transform.translation.z,
                    tfs.transform.rotation.x,
                    tfs.transform.rotation.y,
                    tfs.transform.rotation.z,
                    tfs.transform.rotation.w);
            // 计算son1坐标系中的点对应的son2坐标系位置
            geometry_msgs::PointStamped point_at_son2;
            point_at_son2 = buffer.transform(point_at_son1, "son2");
            ROS_INFO("Coordinate at son2 is (%.2f,%.2f,%.2f)",
            point_at_son2.point.x, point_at_son2.point.y, point_at_son2.point.z);
        }
        catch(const std::exception& e)
        {
            ROS_WARN("%s", e.what());
        }
        rate.sleep();
        ros::spinOnce();
    }
    
    

    return 0;
}
