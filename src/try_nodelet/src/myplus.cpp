#include"ros/ros.h"
#include"nodelet/nodelet.h"
#include"pluginlib/class_list_macros.h"
#include"std_msgs/Float64.h"

namespace my_nodelet
{
    class MyPlus:public nodelet::Nodelet
    {
        private:
        ros::Publisher pub;
        ros::Subscriber sub;
        double value;

        public:
        MyPlus()
        {
            value = 0.0;
        }

        void onInit()
        {
            ROS_INFO("hello nodelet --------");
            // 获取私有NodeHandle
            ros::NodeHandle nh = getPrivateNodeHandle();
            // 通过NodeHandle获取参数服务器参数值，是相对命名空间下的值
            nh.getParam("value", value);
            // 实际话题名称为/节点名/out
            pub = nh.advertise<std_msgs::Float64>("out", 100);
            sub = nh.subscribe<std_msgs::Float64>("in", 100, &MyPlus::callback, this);
        }

        void callback(const std_msgs::Float64::ConstPtr &p)
        {
            double in = p->data;
            double out = in + value;
            std_msgs::Float64 msg;
            msg.data = out;
            pub.publish(msg);
        }
    };
}

PLUGINLIB_EXPORT_CLASS(my_nodelet::MyPlus, nodelet::Nodelet)