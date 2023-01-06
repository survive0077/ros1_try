#include"ros/ros.h"
#include"ser_cli/addints.h"

int main(int argc, char *argv[])
{
    //argc为传入参数个数，argv为传入参数表，第0个为程序名，python中类似
    if(argc != 3)
    {
        ROS_INFO("Number error");
        
        return 1;
    }
    ros::init(argc, argv, "add_c");
    ros::NodeHandle nh;
    ros::ServiceClient cli = nh.serviceClient<ser_cli::addints>("addints");
    ser_cli::addints ai;
    ai.request.num1 = atoi(argv[1]);
    ai.request.num2 = atoi(argv[2]);
    
    // ros::service::waitForService("addints");
    cli.waitForExistence();
    
    bool flag = cli.call(ai);
    if(flag)
    {
        ROS_INFO("Success");
        ROS_INFO("The sum is %d", ai.response.sum);
    }
    else
    {
        ROS_INFO("Fail");
    }

    return 0;
}