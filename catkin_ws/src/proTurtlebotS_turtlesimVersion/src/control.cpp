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
    //std::string topic = "turtle1/cmd_vel";
    std::string topic = "cmd_vel_mux/input/teleop";


    ros::NodeHandle node;//创建节点
    cmdVelPub = node.advertise<geometry_msgs::Twist>(topic, 1);//创建命令最多存储1条消息
    ros::Rate loopRate(40);//执行频率
    //signal(SIGINT, shutdown);
    ROS_INFO("exbot_example_move cpp start...");//启动

    int rate = 40;
    double linear_speed = 0.2;//origin:1
    double goal_distance = 1.00;
    double linear_duration = goal_distance / linear_speed;

    double angular_speed = 0.3;
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
        int ticks = int(angular_duration*12*rate);//旋转时间
        speed.angular.z=angular_speed;//speed

        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);//topic
            loopRate.sleep();//控制程序的循环频率
        }
        ROS_INFO("1 zhuanwan");
        //stop
        speed = geometry_msgs::Twist();//速度清零
        cmdVelPub.publish(geometry_msgs::Twist());//清零后发话题
        sleep(1);//暂停程序1秒钟
        //zhixianzou
        ticks = int(linear_duration * rate*2.5);//zhixianzou时间
        speed.linear.x = linear_speed;//直走时间
        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);//topic
            loopRate.sleep();//控制程序的循环频率
        }
        ROS_INFO("1 zhizou");

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
        int ticks = int(angular_duration*16*rate);;
        speed.angular.z= - angular_speed;

        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        ROS_INFO("2 zhuanwan");
        //stop
        speed = geometry_msgs::Twist();
        cmdVelPub.publish(geometry_msgs::Twist());
        sleep(1);
        //zhixianzou
        ticks = int(linear_duration * rate*1.75);
        speed.linear.x = linear_speed;
        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        ROS_INFO("2 zhizou");

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
        int ticks = int(angular_duration*17*rate);;
        speed.angular.z= - angular_speed;

        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        ROS_INFO("3 zhuanwan");
        //stop
        speed = geometry_msgs::Twist();
        cmdVelPub.publish(geometry_msgs::Twist());
        sleep(1);
        //zhixianzou
        ticks = int(linear_duration* rate*3.5);
        speed.linear.x = linear_speed;
        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        ROS_INFO("3 zhizou");

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
        int ticks = int(angular_duration*17.5*rate);;
        speed.angular.z= - angular_speed;

        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        ROS_INFO("4 zhuanwan");
        //stop
        speed = geometry_msgs::Twist();
        cmdVelPub.publish(geometry_msgs::Twist());
        sleep(1);
        //zhixianzou
        ticks = int(linear_duration * rate*4);
        speed.linear.x = linear_speed;
        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        ROS_INFO("4 zhizou");

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
        int ticks = int(angular_duration*15*rate);;
        speed.angular.z= - angular_speed;

        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        ROS_INFO("5 zhuanwan");
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
        ROS_INFO("5 zhizou");
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
        int ticks = int(angular_duration*12*rate);;
        speed.angular.z= - angular_speed;

        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        ROS_INFO("6 zhuanwan");
        //stop
        speed = geometry_msgs::Twist();
        cmdVelPub.publish(geometry_msgs::Twist());
        sleep(1);
        //zhixianzou
        ticks = int(linear_duration * rate*1.75);
        speed.linear.x = linear_speed;
        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        ROS_INFO("6 zhizou");
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
        int ticks = int(angular_duration*0.5*rate);;
        speed.angular.z= - angular_speed;

        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        ROS_INFO("7 zhuanwan");
        //stop
        speed = geometry_msgs::Twist();
        cmdVelPub.publish(geometry_msgs::Twist());
        sleep(1);
        //zhixianzou
        ticks = int(linear_duration * rate*1.5);
        speed.linear.x = linear_speed;
        for(int t=0; t<ticks; t++)
        {
            cmdVelPub.publish(speed);
            loopRate.sleep();
        }
        ROS_INFO("7 zhizou");
        cmdVelPub.publish(geometry_msgs::Twist());
        loopRate.sleep();
        one_flag = 7;

        return 1;

    }//for
    }//if(0)

}//while
    return 0;
}//main
