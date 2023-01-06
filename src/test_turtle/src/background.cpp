#include"ros/ros.h"


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "background_c");
    
    // ros::param::set("/turtlesim/background_b", 100);
    // ros::param::set("/turtlesim/background_g", 110);
    // ros::param::set("/turtlesim/background_r", 120);

    // ros::NodeHandle nh;
    // nh.setParam("/turtlesim/background_b", 130);
    // nh.setParam("/turtlesim/background_g", 140);
    // nh.setParam("/turtlesim/background_r", 150);

    ros::NodeHandle nh("turtlesim");
    nh.setParam("background_b", 130);
    nh.setParam("background_b", 140);
    nh.setParam("background_b", 150);
    return 0;
}
