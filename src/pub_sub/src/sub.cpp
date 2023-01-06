#include"ros/ros.h"
#include"std_msgs/String.h"
#include<sstream>

using namespace std;

void callback(const std_msgs::String::ConstPtr &msg)
{
    ROS_INFO("Receive %s", msg->data.c_str());
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "sub_c");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("hello", 10, callback);
    ros::spin();
    return 0;
}