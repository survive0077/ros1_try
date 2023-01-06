#include"ros/ros.h"
#include"turtlesim/Spawn.h"

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "turtle2");
    ros::NodeHandle nh;
    ros::ServiceClient client = nh.serviceClient<turtlesim::Spawn>("/spawn");
    turtlesim::Spawn spawn;
    spawn.request.x = atoi(argv[1]);
    spawn.request.y = atoi(argv[2]);
    spawn.request.theta = atof(argv[3]);
    spawn.request.name = argv[4];
    // ros::service::waitForService("/spawn");
    client.waitForExistence();
    bool flag = client.call(spawn);
    if (flag)
    {
        ROS_INFO("Success. %s", spawn.response.name.c_str());
    }
    else
    {
        ROS_INFO("Failed");
    }
    
    return 0;
}
