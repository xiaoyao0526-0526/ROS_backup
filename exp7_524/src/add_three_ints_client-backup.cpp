#include "ros/ros.h"
#include "exp7_524/AddThreeInts.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "add_three_ints_client");
  if (argc != 4)
  {
    ROS_INFO("usage: add_three_ints_client X Y Z");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<exp7_524::AddThreeInts>("add_three_ints");//这段代码为add_two_ints service创建一个client。ros::ServiceClient 对象待会用来调用service。
  exp7_524::AddThreeInts srv;
  srv.request.a = atoll(argv[1]);
  srv.request.b = atoll(argv[2]);
  srv.request.c = atoll(argv[3]);//这里，我们实例化一个由ROS编译系统自动生成的service类，并给其request成员赋值。一个service类包含两个成员request和response。同时也包括两个类定义Request和Response。
  if (client.call(srv))
  {
    ROS_INFO("Sum: %ld", (long int)srv.response.sum);
  }
  //这段代码是在调用service。由于service的调用是模态过程（调用的时候占用进程阻止其他代码的执行），一旦调用完成，将返回调用结果。如果service调用成功，call()函数将返回true，srv.response里面的值将是合法的值。如果调用失败，call()函数将返回false，srv.response里面的值将是非法的。
  else
  {
    ROS_ERROR("Failed to call service add_three_ints");
    return 1;
  }

  return 0;
}
