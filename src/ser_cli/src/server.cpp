#include"ros/ros.h"
#include"ser_cli/addints.h"

bool callback(ser_cli::addints::Request &request, ser_cli::addints::Response &response)
{
    int num1 = request.num1;
    int num2 = request.num2;
    ROS_INFO("The 2 numbers are %d, %d", num1, num2);
    int sum = num1 + num2;
    response.sum = sum;
    ROS_INFO("The sum is %d", sum);

    return true;
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "add_s");
    ros::NodeHandle nh;
    ros::ServiceServer ser = nh.advertiseService("addints", callback);
    ROS_INFO("Run successfully");
    ros::spin();
    return 0;
}
