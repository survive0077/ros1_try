#ifndef POLYGON_BASE_H_
#define POLYGON_BASE_H_

namespace polygon_base_ns
{
    // 基类中必须包含无参构造
    class Polygon_Base
    {
        protected:
        Polygon_Base(){}

        public:
        virtual void init(double side_length) = 0;
        virtual double perimeter() = 0;
        virtual ~Polygon_Base(){};
    };
}

#endif