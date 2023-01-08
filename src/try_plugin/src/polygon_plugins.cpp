#include"try_plugin/polygon_plugins.h"
#include"try_plugin/polygon_base.h"
#include"pluginlib/class_list_macros.h"

namespace polygon_plugins_ns
{
    Triangle::Triangle()
    {
        side_length = 0.0;
    }

    void Triangle::init(double side_length)
    {
        this->side_length = side_length;
    }

    double Triangle::perimeter()
    {
        return side_length * 3;
    }

    Square::Square()
    {
        side_length = 0.0;
    }

    void Square::init(double side_length)
    {
        this->side_length = side_length;
    }

    double Square::perimeter()
    {
        return side_length * 4;
    }
}

// 类注册
//参数1:衍生类 参数2:基类
PLUGINLIB_EXPORT_CLASS(polygon_plugins_ns::Triangle, polygon_base_ns::Polygon_Base)
PLUGINLIB_EXPORT_CLASS(polygon_plugins_ns::Square, polygon_base_ns::Polygon_Base)