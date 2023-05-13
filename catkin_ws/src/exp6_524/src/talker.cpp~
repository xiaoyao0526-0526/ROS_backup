#include "ros/ros.h"
#include "std_msgs/String.h"
#include <geometry_msgs/Twist.h>
#include <math.h>
#include <sstream>
#include "exp6_524/DoSquare.h"


ros::Publisher pub;

//定义服务回调函数
bool doSquare(exp6_524::DoSquare::Request  &req,
         exp6_524::DoSquare::Response &res)
{
    srand(time(0));
    ros::Rate rate(2);
    int iterator = 0;

    while(ros::ok())
    {
        geometry_msgs::Twist msg;
        msg.linear.x = 1;
        iterator++;

        if(iterator == 5)
        {
            iterator = 0;
            msg.linear.x = 0;
            msg.angular.z = 3.14;
        }

        // 处理服务请求
        if(iterator == req.radius)
        {
            res.success = true;
            ROS_INFO("Square request succeeded");
            return true;
        }

        pub.publish(msg);
        ROS_INFO_STREAM("Sending random velocity command: "
                        << "linear = " << msg.linear.x
                        << " angular = " << msg.angular.z);

        rate.sleep();
    }

    return false;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "talker");
    ros::NodeHandle n;
    pub = n.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 1000);

    // 注册服务回调函数
    ros::ServiceServer service = n.advertiseService("do_square", doSquare);

    ROS_INFO("Ready to square the number of times.");

    ros::spin();

    return 0;
}
