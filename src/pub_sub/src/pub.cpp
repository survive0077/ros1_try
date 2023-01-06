#include"ros/ros.h"
#include"std_msgs/String.h"
#include<sstream>

using namespace std;


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "pub_c");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<std_msgs::String>("hello", 10);
    std_msgs::String msg;
    ros::Rate rate(10);
    ros::Duration(3).sleep();
    int n = 0;
    while(ros::ok())
    {   
        stringstream str;
        str<<"hello+"<<n++;
        msg.data = str.str();
        pub.publish(msg);
        ROS_INFO("Send %s", str.str().c_str());
        rate.sleep();
        ros::spinOnce();
    }
    return 0;
}
