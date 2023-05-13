#include <ros/ros.h>
#include <signal.h>
#include <geometry_msgs/Twist.h>
#include "pro001/geometry_msgs.h"

ros::Publisher cmdVelPub;

int main(int argc, char **argv)
{
    ros::init(argc, argv, "geometry_msgs");
    std::string topic = "cmd_vel_mux/input/teleop";

    ros::NodeHandle node;
    cmdVelPub = node.advertise<geometry_msgs::Twist>(topic, 1);
    ros::Rate loopRate(50);
    //signal(SIGINT, shutdown);
    ROS_INFO("exbot_example_move cpp start...");

    int rate = 50;
    double linear_speed = 0.2;
    double goal_distance = 1.0;
    double linear_duration = goal_distance / linear_speed;

    double angular_speed = 0.2;
    double goal_angle = 1.0;
    double angular_duration = goal_angle / angular_speed;



    geometry_msgs::Twist speed;
while(ros::ok())
{
    for(int i=0; i<1; i++)
    {
        //zhixianzou 
        speed = geometry_msgs::Twist(); //stop car
        int ticks = int(linear_duration * rate);
        speed.linear.x = linear_speed;
        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        //stop
        speed = geometry_msgs::Twist();
        cmdVelPub.publish(geometry_msgs::Twist());
        sleep(1);
        //zhuanjiao
        speed.angular.z=angular_speed;
        ticks = int(goal_angle * rate);
        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        cmdVelPub.publish(geometry_msgs::Twist());
        loopRate.sleep();



    }
}
    return 0;
}
