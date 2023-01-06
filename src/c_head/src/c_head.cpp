#include"ros/ros.h"
#include"c_head/head.h"

namespace head
{
    void cHead::run()
    {
        ROS_INFO("hello");
    }
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "c_head");
    
    head::cHead cHead;
    cHead.run();

    return 0;
}
