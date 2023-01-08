#include"ros/ros.h"
#include"pluginlib/class_loader.h"
#include"try_plugin/polygon_base.h"

int main(int argc, char *argv[])
{
    // 类加载器，包名，类的类型
    pluginlib::ClassLoader<polygon_base_ns::Polygon_Base> loader("try_plugin", "polygon_base_ns::Polygon_Base");
    // 加载器实例化插件
    boost::shared_ptr<polygon_base_ns::Polygon_Base> triangle = loader.createInstance("polygon_plugins_ns::Triangle");
    triangle->init(10);
    double perimeter1 = triangle->perimeter();
    ROS_INFO("The perimeter of triangle is %.2f", perimeter1);

    boost::shared_ptr<polygon_base_ns::Polygon_Base> square = loader.createInstance("polygon_plugins_ns::Square");
    square->init(10);
    double perimeter2 = square->perimeter();
    ROS_INFO("The perimeter of square is %.2f", perimeter2);
    return 0;
}
