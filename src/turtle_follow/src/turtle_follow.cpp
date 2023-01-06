#include"ros/ros.h"
#include"tf2_ros/buffer.h"
#include"tf2_ros/transform_listener.h"
#include"geometry_msgs/PoseStamped.h"
#include"tf2_geometry_msgs/tf2_geometry_msgs.h"
#include"geometry_msgs/TransformStamped.h"
#include"geometry_msgs/Twist.h"
#include<iostream>


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "sub_multi");
    ros::NodeHandle nh;
    tf2_ros::Buffer buffer;
    tf2_ros::TransformListener sub(buffer);
    std::string turtle_name = argv[1];
    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("/" + turtle_name + "/cmd_vel", 100);

    std::string father = argv[1];
    std::string child = argv[2];

    ros::Rate rate(10);
    while (ros::ok())
    {
        try
        {
            // 计算坐标系间的相对关系，传入参数顺序：目标坐标系，源坐标系，时间
            geometry_msgs::TransformStamped tfs;
            tfs = buffer.lookupTransform(father, child, ros::Time(0));
            // ROS_INFO("father: %s, child: %s, translation: (%.2f,%.2f,%.2f), rotation: (%.2f,%.2f,%.2f,%.2f)",
            //         tfs.header.frame_id.c_str(),
            //         tfs.child_frame_id.c_str(),
            //         tfs.transform.translation.x,
            //         tfs.transform.translation.y,
            //         tfs.transform.translation.z,
            //         tfs.transform.rotation.x,
            //         tfs.transform.rotation.y,
            //         tfs.transform.rotation.z,
            //         tfs.transform.rotation.w);
            geometry_msgs::Twist twist;
            // 乌龟只有线速度的x和角速度的z
            twist.linear.x = 0.5 * sqrt(pow(tfs.transform.translation.x, 2) + pow(tfs.transform.translation.y, 2));
            twist.angular.z = 4 * atan2(tfs.transform.translation.y, tfs.transform.translation.x);

            pub.publish(twist);
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
