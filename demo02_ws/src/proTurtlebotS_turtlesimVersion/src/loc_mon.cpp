#include <vector>
#include <string>

#include <ros/ros.h>
//#include <nav_msgs/Odometry.h>
#include <turtlesim/Pose.h>
#include "pro_turtlebot_s/Location_monitor.h"
#include "pro_turtlebot_s/spawn_utils.h"

using std::vector;
using std::string;
using pro_turtlebot_s::Location_monitor;

class Landmark
{
public:
  Landmark(string name, double x, double y) : name(name), x(x), y(y) {}
  string name;
  double x;
  double y;
};

class LandmarkMonitor
{
public:
  LandmarkMonitor(const ros::Publisher& landmark_pub) : landmarks_(),landmark_pub_(landmark_pub) { InitLandmarks(); }

    //void OdomCallback(const nav_msgs::Odometry::ConstPtr& msg)
    void OdomCallback(const turtlesim::Pose& msg)
  {
    double x = msg.x;
    double y = msg.y;
    Location_monitor ld = FindClosest(x,y);
    landmark_pub_.publish(ld);
    if(ld.distance <= 1.0){
      ROS_INFO("I'm near the %s", ld.name.c_str());
    }
    //ROS_INFO("name: %s, d: %f", ld.name.c_str(), ld.distance);
    // ROS_DEBUG("x: %f, y: %f", x, y);
    // ROS_INFO("x: %f, y: %f", x, y);
    // ROS_WARN("x: %f, y: %f", x, y);
    // ROS_ERROR("x: %f, y: %f", x, y);
    // ROS_FATAL("x: %f, y: %f", x, y);
  }

private:
  vector<Landmark> landmarks_;
  ros::Publisher landmark_pub_;
  Location_monitor FindClosest(double x, double y)
  {
    Location_monitor result;
    result.distance = -1;

    for (size_t i = 0; i < landmarks_.size(); ++i)
    {
      const Landmark& landmark = landmarks_[i];
      double xd = landmark.x - x;
      double yd = landmark.y - y;
      double distance = sqrt(xd * xd + yd * yd);

      if (result.distance < 0 || distance < result.distance)
      {
        result.name = landmark.name;
        result.distance = distance;
      }
    }
    return result;
  }

  void InitLandmarks()
  {
    landmarks_.push_back(Landmark("One", 1.94, 2.08));
    landmarks_.push_back(Landmark("Two", 8.01, 3.23));
    landmarks_.push_back(Landmark("Three", 9.12, 9.33));
    landmarks_.push_back(Landmark("Four", 2.13, 9.35));
    landmarks_.push_back(Landmark("Five", 4.71, 7.88));
    landmarks_.push_back(Landmark("Strat/End", 5.5, 5.5));
  }

};

int main(int argc, char** argv)
{
  // Set up ROS.
  ros::init(argc, argv, "loc_mon");
  ros::NodeHandle nh;

  ros::Publisher landmark_pub = nh.advertise<Location_monitor>("closest_landmark",10);

  LandmarkMonitor monitor(landmark_pub);
  // ros::Subscriber sub = nh.subscribe("odom", 10, OdomCallback);//functions
  ros::Subscriber sub =
      nh.subscribe("/turtle1/pose", 10, &LandmarkMonitor::OdomCallback, &monitor);
  
  spawnFiveTurtles(argc, argv);

  ROS_INFO("Hello landmarkMonitor!");
  ROS_INFO("请输入rosrun 包名 节点名 x（x=1,2,3,4）");
  ROS_INFO("注意：请不要有x1，x2");
  ROS_INFO("该项目是水体质量检测装置回收");
  ROS_INFO("目前时测试阶段，会有五个水体质量检测装置");
  ROS_INFO("希望测试成功！！！");
  ros::spin();
  return 0;
}
