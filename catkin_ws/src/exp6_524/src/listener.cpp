#include "ros/ros.h"
#include <geometry_msgs/Twist.h>
#include "std_msgs/String.h"

void cmdVelCallback(const geometry_msgs::Twist::ConstPtr& msg)
{
  ROS_INFO_STREAM("Received command velocity:\n"
                  << "linear = " << msg->linear.x
                  << " angular = " << msg->angular.z);
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "listener");
  ros::NodeHandle nh;
  ros::Subscriber sub = nh.subscribe("turtle1/cmd_vel", 1000, cmdVelCallback);
  ros::spin();
  return 0;
}

