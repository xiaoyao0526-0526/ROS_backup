#include <ros/ros.h>
#include <nav_msgs/Odometry.h>

void OdomCallback(const nav_msgs::Odometry::ConstPtr& msg)
{
  double x = msg->pose.pose.position.x;
  double y = msg->pose.pose.position.y;

    ROS_INFO("x=[%f],y=[%f]", x, y);

}
int main(int argc, char **argv)
{
  // Set up ROS.
  ros::init(argc, argv, "node3");
  ros::NodeHandle n;
  ros::Subscriber sub =
       n.subscribe("odom", 10, OdomCallback);
  ros::spin();
  ROS_INFO("Hello world!");
}
