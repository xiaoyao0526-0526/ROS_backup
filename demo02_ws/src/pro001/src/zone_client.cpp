#include "ros/ros.h"
#include "pro001/move.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "zone_client");
  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<pro001::move>("add_one_ints");
  pro001::move srv;
  srv.request.a = atoll(argv[1]);
  if (client.call(srv))
  {
    if (srv.response.sum==1) {ROS_INFO("your choice is 1.Zone_1");}
    if (srv.response.sum==2) {ROS_INFO("your choice is 2.Zone_2");}
  }


  return 0;
}
