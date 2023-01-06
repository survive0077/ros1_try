#include"ros/ros.h"
#include"actionlib/server/simple_action_server.h"
#include"action/addintsAction.h"


typedef actionlib::SimpleActionServer<action::addintsAction> Server;

void callback(const action::addintsGoalConstPtr &goalPtr, Server *server)
{
    int goal_num = goalPtr->num;
    ROS_INFO("The target number is %d", goal_num);
    ros::Rate rate(10);
    int sum = 0;
    for (int i = 1; i <= goal_num; i++)
    {
        sum += i;
        // 产生持续反馈
        action::addintsFeedback feedback;
        feedback.percent = i / (double)goal_num;
        server->publishFeedback(feedback);
        rate.sleep();
    }
    // 最终结果发送
    ROS_INFO("The result is %d", sum);
    action::addintsResult result;
    result.result = sum;
    server->setSucceeded(result);
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "server");
    ros::NodeHandle nh;
    // boost::bind为绑定功能
    // boost::bind(&callback, _1, &server)等价于callback(_1, &server)
    // _1表示传入的第一个参数
    Server server(nh, "addints", boost::bind(callback, _1, &server), false);
    // 如果auto_start为false，手动启动服务。为true则自动启动服务
    server.start();
    ROS_INFO("Server start");
    ros::spin();
    return 0; 
} 
