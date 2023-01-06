#include"ros/ros.h"

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "time");
    ros::NodeHandle nh;
    
    ros::Time now = ros::Time::now();
    ROS_DEBUG("DEBUG");
    ROS_INFO("INFO");
    ROS_WARN("WARN");
    ROS_ERROR("ERROR");
    ROS_FATAL("FATAL");

    return 0;
}