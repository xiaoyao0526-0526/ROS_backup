#include "ros/ros.h"
#include "plumbing_pub_sub/Person.h"

int main(int argc, char *argv[])
{
    ROS_INFO("This is pub");

    ros::init(argc,argv,"banZhuRen");

    ros::NodeHandle nh;

    ros::Publisher pub = nh.advertise<plumbing_pub_sub::Person>("chat",10);

    plumbing_pub_sub::Person person;

    person.name = "zhangSan";
    person.age = 12;
    person.height = 1.73;

    ros::Rate rate(1);
    ros::Duration(3).sleep();

    while (ros::ok())
    {
        person.age+=1;

        pub.publish(person);
        ROS_INFO("pub is :%s,%d,%.2f" ,person.name.c_str(), person.age, person.height);

        rate.sleep();

        ros::spinOnce();
    }
        
    return 0;
}
