#include"ros/ros.h"
#include"tf2_ros/transform_listener.h"
#include"tf2_ros/buffer.h"
#include"geometry_msgs/PointStamped.h"
#include"tf2_geometry_msgs/tf2_geometry_msgs.h"

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "sub_dynamic");
    ros::NodeHandle nh;
    // 监听的缓冲区
    tf2_ros::Buffer buffer;
    // 监听对象初始化需要缓冲
    tf2_ros::TransformListener sub(buffer);
    // 坐标点数据
    geometry_msgs::PointStamped ps;
    // 该点所属的坐标系
    ps.header.frame_id = "turtle1";
    // 时间戳设置为0，进入buffer的坐标是有延迟的，
    // 如果ps和buffer中时间相差太多会认为为过时消息从而拒绝处理报错，
    // 设置为0或者空 可避免这一情况发生
    ps.header.stamp = ros::Time(0.0);
    ps.point.x = 2.0;
    ps.point.y = 3.0;
    ps.point.z = 5.0;
    // 方法1：休眠以保证订阅到坐标系关系，关系还没缓存到buffer里，需要休眠等待
    // ros::Duration(10).sleep();
    ros::Rate rate(10);
    while(ros::ok())
    {
        geometry_msgs::PointStamped ps_out;
        // 方法2：异常处理，try捕获为订阅到坐标系关系的异常，防止报错
        try
        {
            // 将PS点从laser坐标系转换到base_link基坐标系 
            ps_out = buffer.transform(ps, "world");
            ROS_INFO("the coordinate after transformation is (%.2f,%.2f,%.2f)", ps_out.point.x, ps_out.point.y, ps_out.point.z);
        }
        catch(const std::exception& e)
        {
            ROS_INFO("%s", e.what());
        }
        
        rate.sleep();
        ros::spinOnce();
    }

    
    return 0;
}
