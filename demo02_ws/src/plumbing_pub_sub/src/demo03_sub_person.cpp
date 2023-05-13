#include "ros/ros.h"
#include "plumbing_pub_sub/Person.h"

void doPerson(const plumbing_pub_sub::Person::ConstPtr& person){
    ROS_INFO("person :%s,%d,%.2f",person->name.c_str(),person->age,person->height);
}

int main(int argc, char *argv[])
{
    ROS_INFO("This is sub");
    
    ros::init(argc,argv,"xueSheng");

    ros::NodeHandle nh;

    ros::Subscriber sub = nh.subscribe("chat",10,doPerson);
    
    ros::spin();

    return 0;
}
