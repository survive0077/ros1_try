#include"ros/ros.h"
#include"turtlesim/Pose.h"

void callback(const turtlesim::Pose::ConstPtr &pose)
{
    ROS_INFO("Pose is -> x: %.2f, y: %.2f, theta: %.2f, angular: %.2f, linear: %.2f",
     pose->x, pose->y, pose->theta, pose->angular_velocity, pose->linear_velocity);
}


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "pose");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("/turtle1/pose", 10, callback);

    ros::spin();
    return 0;
}