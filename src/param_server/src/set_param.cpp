#include"ros/ros.h"


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "set_param_c");
    ros::NodeHandle nh;
    // -----add-----
    // 1. nh
    nh.setParam("type", "A");
    nh.setParam("radius", 0.15);
    // 2. ros::param
    ros::param::set("type_p", "B");
    ros::param::set("radius_p", 0.1);

    // -----modify-----
    // 1. nh
    nh.setParam("radius", 0.25);
    // 2. ros::param
    ros::param::set("radius_p", 0.2);
    return 0;
}
