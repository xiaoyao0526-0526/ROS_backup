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
  ros::ServiceClient client = n.serviceClient<exp7_524::AddThreeInts>("add_three_ints");//���δ���Ϊadd_two_ints service����һ��client��ros::ServiceClient ����������������service��
  exp7_524::AddThreeInts srv;
  srv.request.a = atoll(argv[1]);
  srv.request.b = atoll(argv[2]);
  srv.request.c = atoll(argv[3]);//�������ʵ����һ����ROS����ϵͳ�Զ����ɵ�service�࣬������request��Ա��ֵ��һ��service������������Աrequest��response��ͬʱҲ���������ඨ��Request��Response��
  if (client.call(srv))
  {
    ROS_INFO("Sum: %ld", (long int)srv.response.sum);
  }
  //���δ������ڵ���service������service�ĵ�����ģ̬���̣����õ�ʱ��ռ�ý�����ֹ����������ִ�У���һ���������ɣ������ص��ý���������service���óɹ���call()����������true��srv.response������ֵ���ǺϷ���ֵ����������ʧ�ܣ�call()����������false��srv.response������ֵ���ǷǷ��ġ�
  else
  {
    ROS_ERROR("Failed to call service add_three_ints");
    return 1;
  }

  return 0;
}

