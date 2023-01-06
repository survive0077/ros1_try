#include"ros/ros.h"


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "del_param_c");
    ros::NodeHandle nh;
    // -----del-----
    // 1. nh
    bool result1 = nh.deleteParam("radius");
    if(result1)
    {
        ROS_INFO("Result %d", result1);
    }
    else
    {
        ROS_INFO("False");
    }
    // 2. ros::param
    bool result2 = ros::param::del("radius_p");
    if(result2)
    {
        ROS_INFO("Result %d", result2);
    }
    else
    {
        ROS_INFO("False");
    }

    return 0;
}
