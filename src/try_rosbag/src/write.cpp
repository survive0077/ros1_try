#include"ros/ros.h"
#include"rosbag/bag.h"
#include"std_msgs/String.h"


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "bag_write");
    ros::NodeHandle nh;
    rosbag::Bag bag;
    // 打开文件流：写
    bag.open("hello.bag", rosbag::BagMode::Write);
    std_msgs::String msg;
    msg.data = "hello world";
    // 传入参数：话题，时间戳，消息
    bag.write("/chat", ros::Time::now(), msg);
    bag.write("/chat", ros::Time::now(), msg);
    bag.write("/chat", ros::Time::now(), msg);
    // 关闭文件流
    bag.close();

    return 0;
}
