#include"ros/ros.h"
#include<iostream>


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "get_param_c");
    ros::NodeHandle nh;

    // 1. nh
    // 1.1 param
    double r = nh.param("radius", -1.0);
    ROS_INFO("Radius is %.2f m", r);

    // 1.2 getParam
    double ra = 0.0;
    bool result = nh.getParam("radius", ra);
    if(result)
    {
        ROS_INFO("Radius is %.2f m", ra);
    }
    else
    {
        ROS_INFO("Radius does not exist");
    }

    // 1.3 getParamCached
    double rad = 0.0;
    bool result1 = nh.getParamCached("radius", rad);
    if(result1)
    {
        ROS_INFO("Radius is %.2f m", rad);
    }
    else
    {
        ROS_INFO("Radius does not exist");
    }

    // 1.4 getParamNames
    std::vector<std::string> names;
    nh.getParamNames(names);
    for (auto &&name : names)
    {
        ROS_INFO("Name is %s", name.c_str());
    }
    
    // 1.5 hasParam
    bool flag1 = nh.hasParam("radius");
    bool flag2 = nh.hasParam("radius123");
    ROS_INFO("radius : %d, radius123 : %d", flag1, flag2);

    // 1.6 searchParam
    std::string key;
    nh.searchParam("radius", key);
    ROS_INFO("Find %s", key.c_str());

    // 2. ros::param
    // 2.1 ros::param::param
    double radi = ros::param::param("radius", 10.0);
    ROS_INFO("Radius_param is %.2f m", r);
    
    // 2.2 ros::param::getParamNames
    std::vector<std::string> names_param;
    ros::param::getParamNames(names_param);
    for (auto &&name : names_param)
    {
        ROS_INFO("Name is %s", name.c_str());
    }
    

    return 0;
}
