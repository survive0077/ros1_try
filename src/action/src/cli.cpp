#include"ros/ros.h"
#include"actionlib/client/simple_action_client.h"
#include"action/addintsAction.h"

typedef actionlib::SimpleActionClient<action::addintsAction> Client;

// 响应成功时的回调函数
void done_cb(const actionlib::SimpleClientGoalState &state, const action::addintsResultConstPtr &result)
{
    // 判断响应状态是否成功
    if(state.state_ == state.SUCCEEDED)
        ROS_INFO("The result is %d", result->result);
    else
        ROS_INFO("False");
}

// 激活的回调
void active_cb()
{
    ROS_INFO("Successfully connect");
}

// 连续反馈的回调
void feedback_cb(const action::addintsFeedbackConstPtr &feedback)
{
    ROS_INFO("Percentage: %.2f%%", 100 * feedback->percent);
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "client");
    ros::NodeHandle nh;
    Client client(nh, "addints");
    // 等待服务启动
    client.waitForServer();
    // 设置目标值
    action::addintsGoal goal;
    goal.num = atoi(argv[1]);

    client.sendGoal(goal, done_cb, active_cb, feedback_cb);
    ros::spin();
    return 0;
}
