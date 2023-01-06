#include"ros/ros.h"
#include"rosbag/bag.h"
#include"rosbag/view.h"
#include"std_msgs/String.h"


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "bag_read");
    ros::NodeHandle nh;
    rosbag::Bag bag;
    // 打开文件流：读
    bag.open("hello.bag", rosbag::BagMode::Read);
    // 读出：话题，时间戳，消息
    // 构造迭代器读取
    for (auto &&msg : rosbag::View(bag))
    {
        // 获取话题
        std::string topic = msg.getTopic();
        // 获取时间戳
        ros::Time time = msg.getTime();
        // 获取具体值，返回指针
        std_msgs::StringPtr p = msg.instantiate<std_msgs::String>();
        ROS_INFO("topic:%s, time:%.2f, message:%s", topic.c_str(), time.toSec(), p->data.c_str());
    }   
    // 关闭文件流
    bag.close();

    return 0;
}
