#include"ros/ros.h"
#include"use_msg/person.h"

using namespace std;

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "pub_person_c");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<use_msg::person>("chat", 10);
    use_msg::person person;
    person.name = "Poooor Tom";
    person.age = 22;
    person.height = 1.75;
    ros::Rate rate(1);
    ros::Duration(3).sleep();
    int n = 0;
    while(ros::ok())
    {   
        person.age += 1;
        pub.publish(person);
        ROS_INFO("Send %s, %li, %.2fm", person.name.c_str(), person.age, person.height);
        rate.sleep();
        ros::spinOnce();
    }
    return 0;
}
