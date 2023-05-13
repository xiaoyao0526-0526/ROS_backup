#include "ros/ros.h"
#include "turtlesim/Pose.h"

void doPose(const turtlesim::Pose::ConstPtr &pose){
    ROS_INFO("turtle's pose :zuobiao:(%.2f,%.2f),chaoxiang:(%.2f),xiansudu:(%.2f),jiaosudu:(%.2f)",
                            pose->x,pose->y,pose->theta,pose->linear_velocity,pose->angular_velocity);
} 

int main(int argc, char *argv[])
{
    ros::init(argc,argv,"sub_pose");

    ros::NodeHandle nh;

    ros::Subscriber sub = nh.subscribe("/turtle1/pose",10,doPose);

    ros::spin(); 
    
    return 0;
}
