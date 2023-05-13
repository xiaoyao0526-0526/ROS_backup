#include <ros/ros.h>
#include <turtlesim/Spawn.h>

static void spawnFiveTurtles(int argc, char** argv)
{
  setlocale(LC_ALL,"");
  // 2.初始化 ros 节点
  ros::init(argc,argv,"set_turtle");
  // 3.创建 ros 句柄
  ros::NodeHandle nh;
  // 4.创建 service 客户端
  ros::ServiceClient client = nh.serviceClient<turtlesim::Spawn>("/spawn");
  // 5.等待服务启动
  ros::service::waitForService("/spawn");

  // 自定义小海龟的位置
  float x_positions[6] = {1.94, 8.01, 9.12, 2.13, 4.71, 5.5};
  float y_positions[6] = {2.08, 3.23, 9.33, 9.35, 7.88, 5.5};

  // 生成五只小海龟
  for(int i=0; i<6; i++) {
      // 6.发送请求
      turtlesim::Spawn spawn;
      spawn.request.x = x_positions[i];
      spawn.request.y = y_positions[i];
      spawn.request.theta = 1.57;
      spawn.request.name = (i==0) ? "One" : (i==1) ? "Two" : (i==2) ? "Three" : (i==3) ?  "Four" : (i==4) ? "Five": "Strat/End" ;
      bool flag = client.call(spawn);
      // 7.处理响应结果
      if (flag) {
          ROS_INFO("新的乌龟生成,名字:%s",spawn.response.name.c_str());
      } else {
          ROS_INFO("乌龟生成失败！！！");
      }
  }

  //return ;
}