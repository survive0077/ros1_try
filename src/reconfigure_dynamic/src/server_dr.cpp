#include"ros/ros.h"
#include"dynamic_reconfigure/server.h"
#include"reconfigure_dynamic/drConfig.h"

void callback(reconfigure_dynamic::drConfig &config, uint32_t level)
{
    ROS_INFO("The new number is %d, %.2f, %s, %d, %d",
                 config.int_param,
                 config.double_param,
                 config.str_param.c_str(),
                 config.bool_param,
                 config.list_param);
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "dr_ser");
    ros::NodeHandle nh;
    dynamic_reconfigure::Server<reconfigure_dynamic::drConfig> server;
    server.setCallback(boost::bind(callback, _1, _2));
    ros::spin();
    return 0;
}
