#ifndef POLYGON_PLUGINS_H_
#define POLYGON_PLUGINS_H_

#include"try_plugin/polygon_base.h"

namespace polygon_plugins_ns
{
    class Triangle:public polygon_base_ns::Polygon_Base
    {
        private:
        double side_length;

        public:
        Triangle();
        void init(double side_length);
        double perimeter();
    };

    class Square:public polygon_base_ns::Polygon_Base
    {
        private:
        double side_length;
        
        public:
        Square();
        void init(double side_length);
        double perimeter();
    };
}
    

#endif