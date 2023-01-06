#include"ros/ros.h"
#include"std_msgs/String.h"


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "rename");
    ros::NodeHandle nh;
    // 全局---话题名以/开头，与节点命名空间及名称无关
    ros::Publisher pub1 = nh.advertise<std_msgs::String>("/pub1", 10); 

    // 相对---非/开头
    ros::Publisher pub2 = nh.advertise<std_msgs::String>("pub2", 10); 

    // 私有---需要创建特定的NodeHandle nh("~")，链接到命名空间-节点下
    ros::NodeHandle new_nh("~");
    ros::Publisher pub3 = new_nh.advertise<std_msgs::String>("pub3", 10); 


    while(ros::ok)
    {

    }
    return 0;
}
