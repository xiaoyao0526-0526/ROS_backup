#include "ros/ros.h"
#include "std_msgs/String.h"
#include <geometry_msgs/Twist.h>
#include <math.h>
#include <sstream>
#include "exp6_524/exp6.h"

void exp6::do_square(ros::Publisher pub)
{
     srand(time(0)); // 设置随机数生成器的种子，以当前时间为参数

    ros::Rate rate(2); // 设置循环频率为2Hz，每秒循环2次

    int iterator = 0; // 迭代器初始化为0

    while(ros::ok()) // 进入ROS循环，只要ROS节点处于运行状态就会一直循环执行
    {
        geometry_msgs::Twist msg; // 创建一个Twist类型的消息

        msg.linear.x = 1; // 设置x轴上的线速度为1

        iterator++; // 迭代器加1

        if(iterator==5) // 如果迭代次数为5
        {
            iterator = 0; // 将迭代器重置为0
            msg.linear.x = 0; // 停止机器人在x轴上的运动
            msg.angular.z = 3.14; // 设置机器人以角速度为3.14绕z轴旋转90度
        }

        pub.publish(msg); // 发布Twist类型的消息

        ROS_INFO_STREAM("emmm,I think sended something:\n" << // 打印调试信息
                        "linear = " << msg.linear.x <<
                        " angular = " << msg.angular.z);

        rate.sleep(); // 按照循环频率延时，使得循环按照指定的频率进行执行
    }
}
