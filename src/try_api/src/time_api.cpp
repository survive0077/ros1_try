#include"ros/ros.h"


void callback(const ros::TimerEvent &event)
{
    ROS_INFO("Callback time %.2f", event.current_real.toSec());
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "time");
    // 句柄为调用时间API所必须的
    ros::NodeHandle nh;
    
    ros::Time now = ros::Time::now();
    ROS_INFO("Now %.2f", now.toSec());
    ROS_INFO("Now %d", now.sec);
    
    ros::Time t1(20,111111111);
    ROS_INFO("t1 %.2f", t1.toSec());

    ros::Time t2(20.5);
    ROS_INFO("t2 %.2f", t2.toSec());

    // 程序休眠
    ros::Time start = ros::Time::now();
    ROS_INFO("Sleeping start : %.2f", start.toSec());
    ros::Duration du(4.5);
    du.sleep();
    ros::Time end = ros::Time::now();
    ROS_INFO("Sleeping end : %.2f", end.toSec());
    ROS_INFO("Last time %.2f", end.toSec() - start.toSec());

    // 时间运算
    ros::Time begin = ros::Time::now();
    ros::Duration du1(5.1);
    ros::Time stop = begin + du1;
    ROS_INFO("Begin at : %.2f Stop at : %.2f", begin.toSec(), stop.toSec());

    ros::Duration du2 = stop - begin;
    ROS_INFO("Duration is : %.2f", du2.toSec());

    ros::Duration du3 = du1 - du2;
    ROS_INFO("du3 is : %.2f", du3.toSec());

    // 定时器
    ros::Timer timer = nh.createTimer(ros::Duration(1), callback);
    ros::spin();

    return 0;
}
