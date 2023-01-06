#include"ros/ros.h"


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "set_name");
    ros::NodeHandle nh;
    // 全局
    ros::param::set("/A", 100);
    // 相对
    ros::param::set("B", 110);
    // 私有
    ros::param::set("~C", 120);

    // 全局
    nh.setParam("/D",130);
    // 相对
    nh.setParam("E",140);
    // 私有
    ros::NodeHandle nh_prative("~");
    nh_prative.setParam("F",150);

    while(ros::ok)
    {
        
    }
    return 0;
}
