#include "ros/ros.h"
#include "exp7_524/AddThreeInts.h"//beginner_tutorials/AddThreeInts.h是由编译系统自动根据我们先前创建的srv文件生成的对应该srv文件的头文件。

bool add(exp7_524::AddThreeInts::Request  &req,
         exp7_524::AddThreeInts::Response &res)
		 //这个函数提供两个int值求和的服务，int值从request里面获取，而返回数据装入response内，这些数据类型都定义在srv文件内部，函数返回一个boolean值。
{
	//现在，两个int值已经相加，并存入了response。然后一些关于request和response的信息被记录下来。最后，service完成计算后返回true值。
  res.sum = req.a + req.b +req.c;
  ROS_INFO("request: x=%ld, y=%ld, z=%ld", (long int)req.a, (long int)req.b, (long int)req.c);
  ROS_INFO("sending back response: [%ld]", (long int)res.sum);
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "add_three_ints_server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("add_three_ints", add);
  ROS_INFO("Ready to add three ints.");
  ros::spin();
  //这里，service已经建立起来，并在ROS内发布出来。
  return 0;
}
