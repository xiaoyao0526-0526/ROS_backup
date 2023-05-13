#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/Twist.h"
#include <sstream>
#include <string>
#include "pro001/move.h"
using std::string;


bool add(pro001::move::Request  &req,
         pro001::move::Response &res)
{
  res.sum = req.a;
    if (res.sum==1)
     {
       ROS_INFO("Today selection is : 1");
       ROS_INFO("Today will go to: Fastfood_No.1");
    ros::NodeHandle n1;
    ros::Publisher move_pub = n1.advertise<geometry_msgs::Twist>("cmd_vel_mux/input/teleop", 1000);
    geometry_msgs::Twist msg;
    for (int i=0;i<=30;i++)
    {
    ros::Rate loop_rate1(15);
    msg.linear.x = 0.0;
    msg.angular.z = 0.33;
    move_pub.publish(msg);
    ros::spinOnce();
    loop_rate1.sleep();
    }
    ros::Rate loop_rate2(10);
    for (int i=0;i<=200;i++)
    {
     msg.linear.x = 0.2;
     msg.angular.z = 0.0;
     move_pub.publish(msg);
     ros::spinOnce();
     loop_rate2.sleep();
    }
    ros::Rate loop_rate3(10);
    for (int i=0;i<=200;i++)
    {
     msg.linear.x = 0.2;
     msg.angular.z = 0.0;
     move_pub.publish(msg);
     ros::spinOnce();
     loop_rate3.sleep();
    }
    ros::Rate loop_rate4(10);
    for (int i=0;i<=100;i++)
    {
     msg.linear.x = 0.2;
     msg.angular.z = 0.0;
     move_pub.publish(msg);
     ros::spinOnce();
     loop_rate4.sleep();
    }
    ros::Rate loop_rate5(10);
    for (int i=0;i<=20;i++)
    {
     msg.linear.x = -0.1;
     msg.angular.z = 0.0;
     move_pub.publish(msg);
     ros::spinOnce();
     loop_rate5.sleep();
    }
}
     if (res.sum==2)
     {
       ROS_INFO("Today selection is : 2");
       ROS_INFO("Today will go to: Fastfood_No.2");
    ros::NodeHandle n1;
    ros::Publisher move_pub = n1.advertise<geometry_msgs::Twist>("cmd_vel_mux/input/teleop", 1000);
    geometry_msgs::Twist msg;
    for (int i=0;i<=30;i++)
    {
    ros::Rate loop_rate1(15);
    msg.linear.x = 0.0;
    msg.angular.z = -0.2;
    move_pub.publish(msg);
    ros::spinOnce();
    loop_rate1.sleep();
    }
    ros::Rate loop_rate2(10);
    for (int i=0;i<=200;i++)
    {
     msg.linear.x = 0.2;
     msg.angular.z = 0.0;
     move_pub.publish(msg);
     ros::spinOnce();
     loop_rate2.sleep();
    }
    ros::Rate loop_rate3(10);
    for (int i=0;i<=200;i++)
    {
     msg.linear.x = 0.2;
     msg.angular.z = 0.0;
     move_pub.publish(msg);
     ros::spinOnce();
     loop_rate3.sleep();
    }
    ros::Rate loop_rate4(10);
    for (int i=0;i<=100;i++)
    {
     msg.linear.x = 0.2;
     msg.angular.z = 0.0;
     move_pub.publish(msg);
     ros::spinOnce();
     loop_rate4.sleep();
    }
    ros::Rate loop_rate5(10);
    for (int i=0;i<=2;i++)
    {
     msg.linear.x = -0.1;
     msg.angular.z = 0.0;
     move_pub.publish(msg);
     ros::spinOnce();
     loop_rate5.sleep();
    }
}

  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "zone_server");
  ros::NodeHandle n;
  ros::ServiceServer service = n.advertiseService("add_one_ints", add);
  ROS_INFO("which block do you want to go?");
  ROS_INFO("1.Zone_1");
  ROS_INFO("2.Zone_2");
  
  ros::spin();
  return 0;
}
