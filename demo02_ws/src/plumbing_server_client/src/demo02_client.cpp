#include "ros/ros.h"
#include "plumbing_server_client/Addints.h"

int main(int argc, char *argv[])
{
    if (argc != 3)
    {
        ROS_INFO("Error");
        return 1;
    }
    

    ros::init(argc,argv,"daBao");

    ros::NodeHandle nh;

    ros::ServiceClient client = nh.serviceClient<plumbing_server_client::Addints>("addInts");

    plumbing_server_client::Addints ai;

    ai.request.num1 = atoi(argv[1]);

    ai.request.num2 = atoi(argv[2]);

    //client.waitForExistence();
    ros::service::waitForService("addInts");

    bool flag = client.call(ai);

    if (flag)
    {
        ROS_INFO("good!");

        ROS_INFO("res = %d",ai.response.sum);
    }else{
        ROS_INFO("fild");
    }
    
    
    return 0;
}
