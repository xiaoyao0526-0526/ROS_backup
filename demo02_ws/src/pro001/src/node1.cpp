#include <ros/ros.h>
#include "std_msgs/String.h"
#include "geometry_msgs/Twist.h"
#include <sstream>
int main(int argc, char **argv)
{
  // Set up ROS.
  ros::init(argc, argv, "node1");
   ROS_INFO("Hello world!");
  ros::NodeHandle n1;
  ros::Publisher move_pub = n1.advertise<geometry_msgs::Twist>("cmd_vel_mux/input/teleop", 1000);
  ros::Rate loop_rate1(1);
  geometry_msgs::Twist msg;
  int count = 0;
  while(ros::ok())
  {
    if (count==5)
    {
    break;
    }
    //geometry_msgs::Vector3 msg;
   // geometry_msgs::Twist msg;
   // float linear[3] = {1,0,0};
    //ss<<"1"<<count;
   // msg.x = linear[0];
   // msg.y = linear[1];
   // msg.z = linear[2];
    msg.linear.x = 1.1;
    msg.angular.z = 0.0;
   // ROS_INFO("%f",msg.x);
   // ROS_INFO("%f",msg.y);
   // ROS_INFO("%f",msg.z);
    move_pub.publish(msg);
    ROS_INFO_STREAM("Sending random velocity command:"
      << " linear=" << msg.linear.x
      << " angular=" << msg.angular.z);

    ros::spinOnce();
    //rate.sleep();
    loop_rate1.sleep();
    count++;
  }

  count=0;
  ros::Rate loop_rate2(10);
   while(1)
   {
     if (count==10)
     {
     break;
     }
     msg.linear.x = 0.0;
     msg.angular.z = 0.0;
     move_pub.publish(msg);
     ROS_INFO_STREAM("Sending random velocity command:"
       << " linear=" << msg.linear.x
       << " angular=" << msg.angular.z);
     ros::spinOnce();
     //rate.sleep();
     loop_rate2.sleep();
     count++;
   }


}
