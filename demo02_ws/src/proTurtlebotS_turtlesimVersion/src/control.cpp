<<<<<<< HEAD:demo02_ws/src/proTurtlebotS_turtlesimVersion/src/control.cpp
#include <iostream>
#include <ros/ros.h>
#include <signal.h>
#include <geometry_msgs/Twist.h>
//#include "pro001/geometry_msgs.h"
#define PI 3.14159265358979323846
ros::Publisher cmdVelPub;

int main(int argc, char **argv)//参数的数量和内容
{
    ros::init(argc, argv, "geometry_msgs");//存储所发布消息的话题名称
    std::string topic = "turtle1/cmd_vel";
    //std::string topic = "cmd_vel_mux/input/teleop";


    ros::NodeHandle node;//创建节点
    cmdVelPub = node.advertise<geometry_msgs::Twist>(topic, 1);//创建命令最多存储1条消息
    ros::Rate loopRate(40);//执行频率
    //signal(SIGINT, shutdown);
    ROS_INFO("exbot_example_move cpp start...");//启动

    int rate = 40;
    double linear_speed = 1;//origin:1
    double goal_distance = 1.00;
    double linear_duration = goal_distance / linear_speed;

    double angular_speed = 1;
    double goal_angle = PI/8;
    double angular_duration = goal_angle / angular_speed;


    int one_flag = 0;
    geometry_msgs::Twist speed;


while(ros::ok())//判断 ROS 系统是否正常运行
{

// point1
    if(one_flag==0)
    {

    for(int i=0; i<1; i++) {
        //zhuanjiao
        speed = geometry_msgs::Twist(); //stop car
        int ticks = int(angular_duration*9*rate);;//旋转时间
        speed.angular.z=angular_speed;//speed

        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);//topic
            loopRate.sleep();//控制程序的循环频率
        }
        //stop
        speed = geometry_msgs::Twist();//速度清零
        cmdVelPub.publish(geometry_msgs::Twist());//清零后发话题
        sleep(1);//暂停程序1秒钟
        //zhixianzou
        ticks = int(linear_duration * rate*4.5);//zhixianzou时间
        speed.linear.x = linear_speed;//直走时间
        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);//topic
            loopRate.sleep();//控制程序的循环频率
        }

        cmdVelPub.publish(geometry_msgs::Twist());//发话题
        loopRate.sleep();//topic
        one_flag = 1;
    }
    }//for




// point2
    if(one_flag==1)
    {


    for(int i=0; i<1; i++)
 {
        //zhuanjiao
        speed = geometry_msgs::Twist(); //stop car
        int ticks = int(angular_duration*12*rate);;
        speed.angular.z= - angular_speed;

        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        //stop
        speed = geometry_msgs::Twist();
        cmdVelPub.publish(geometry_msgs::Twist());
        sleep(1);
        //zhixianzou
        ticks = int(linear_duration * rate*2.5);
        speed.linear.x = linear_speed;
        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }

        cmdVelPub.publish(geometry_msgs::Twist());
        loopRate.sleep();
        one_flag = 2;
    }//for
    }//if(0)


// point3
    if(one_flag==2)
    {


    for(int i=0; i<1; i++) {
        //zhuanjiao
        speed = geometry_msgs::Twist(); //stop car
        int ticks = int(angular_duration*12*rate);;
        speed.angular.z= - angular_speed;

        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        //stop
        speed = geometry_msgs::Twist();
        cmdVelPub.publish(geometry_msgs::Twist());
        sleep(1);
        //zhixianzou
        ticks = int(linear_duration* rate*7);
        speed.linear.x = linear_speed;
        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }

        cmdVelPub.publish(geometry_msgs::Twist());
        loopRate.sleep();
        one_flag = 3;
    }//for
    }//if(0)






// point4
    if(one_flag==3)
    {

    for(int i=0; i<1; i++) {
        //zhuanjiao
        speed = geometry_msgs::Twist(); //stop car
        int ticks = int(angular_duration*12.5*rate);;
        speed.angular.z= - angular_speed;

        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        //stop
        speed = geometry_msgs::Twist();
        cmdVelPub.publish(geometry_msgs::Twist());
        sleep(1);
        //zhixianzou
        ticks = int(linear_duration * rate*6);
        speed.linear.x = linear_speed;
        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }

        cmdVelPub.publish(geometry_msgs::Twist());
        loopRate.sleep();
        one_flag = 4;

    }//for
    }//if(0)
// point5
    if(one_flag==4)
    {

    for(int i=0; i<1; i++) {
        //zhuanjiao
        speed = geometry_msgs::Twist(); //stop car
        int ticks = int(angular_duration*12*rate);;
        speed.angular.z= - angular_speed;

        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        //stop
        speed = geometry_msgs::Twist();
        cmdVelPub.publish(geometry_msgs::Twist());
        sleep(1);
        //zhixianzou
        ticks = int(linear_duration * rate*6);
        speed.linear.x = linear_speed;
        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }

        cmdVelPub.publish(geometry_msgs::Twist());
        loopRate.sleep();
        one_flag = 5;


    }//for
    }//if(0)
// point6
    if(one_flag==5)
    {

    for(int i=0; i<1; i++) {
        //zhuanjiao
        speed = geometry_msgs::Twist(); //stop car
        int ticks = int(angular_duration*10*rate);;
        speed.angular.z= - angular_speed;

        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        //stop
        speed = geometry_msgs::Twist();
        cmdVelPub.publish(geometry_msgs::Twist());
        sleep(1);
        //zhixianzou
        ticks = int(linear_duration * rate*2.5);
        speed.linear.x = linear_speed;
        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }

        cmdVelPub.publish(geometry_msgs::Twist());
        loopRate.sleep();
        one_flag = 6;

    }//for
    }//if(0)
// point7
    if(one_flag==6)
    {

    for(int i=0; i<1; i++) {
        //zhuanjiao
        speed = geometry_msgs::Twist(); //stop car
        int ticks = int(angular_duration*1*rate);;
        speed.angular.z= - angular_speed;

        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        //stop
        speed = geometry_msgs::Twist();
        cmdVelPub.publish(geometry_msgs::Twist());
        sleep(1);
        //zhixianzou
        ticks = int(linear_duration * rate*3);
        speed.linear.x = linear_speed;
        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }

        cmdVelPub.publish(geometry_msgs::Twist());
        loopRate.sleep();
        one_flag = 7;

        return 1;

    }//for
    }//if(0)

}//while
    return 0;
}//main
=======
#include <ros/ros.h>
#include "std_msgs/String.h"
#include "geometry_msgs/Twist.h"
#include "level_three/cmd_msg.h"
#include "level_three/Location_monitor.h"
#include <sstream>

geometry_msgs::Twist msg1;
level_three::cmd_msg cmd_msg;
ros::Publisher move_pub;
bool new_cmd_msg = false;
int target = 0;
float distance;

void target_callback(const level_three::cmd_msg& msg) {
  cmd_msg = msg;
  new_cmd_msg = true;
}

void move_turtle_to_target(int target) {
  switch(target) {
    case 1:
      msg1.linear.x = 0.8;
      msg1.angular.z = 0.0;
      break;
    case 2:
      msg1.linear.x = 0.0;
      msg1.angular.z = 0.40;
      break;
    // add more cases for additional targets as needed
    default:
      ROS_ERROR_STREAM("Invalid target: " << target);
      return;
  }
  move_pub.publish(msg1);
  ROS_INFO_STREAM("Sending velocity command:"
    << " linear=" << msg1.linear.x
    << " angular=" << msg1.angular.z);
}

int main(int argc, char **argv)
{

  // Set up ROS.
  ros::init(argc, argv, "level_three_loc_mon");
  ros::NodeHandle n;

  // Create publisher to control turtle movement.
  move_pub = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 1000);

  // Create subscriber to receive target messages.
  ros::Subscriber target_sub = n.subscribe("target", 1000, target_callback);

  ros::Rate loop_rate(20);
  int count = 0;
  while(ros::ok())
  {
    // 等待 loc_mon 节点发布 target_msg 消息
    while (!new_cmd_msg) {
      ROS_INFO("Waiting for target message...");
      ros::Duration(1.0).sleep();
      ros::spinOnce();
    }

    // 清除 new_target_msg 标志
    new_cmd_msg = false;

    if (target != target) {
      //target = cmd_msg.target;
	target = target;
      move_turtle_to_target(target);
    }

    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}

>>>>>>> 0a4397d857b6d8748b148ea9dda2c77306ec837e:catkin_ws/src/level_three/src/control.cpp
