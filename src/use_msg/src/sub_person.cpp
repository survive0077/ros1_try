#include"ros/ros.h"
#include"use_msg/person.h"

using namespace std;

void callback(const use_msg::person::ConstPtr &person)
{
    ROS_INFO("Rreceie %s, %li, %.2fm", person -> name.c_str(), person -> age, person -> height);
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "sub_person_c");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("chat", 10, callback);
    ros::spin();
    return 0;
}