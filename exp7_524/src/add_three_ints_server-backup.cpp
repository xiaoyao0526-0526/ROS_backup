#include "ros/ros.h"
#include "exp7_524/AddThreeInts.h"//beginner_tutorials/AddThreeInts.h���ɱ���ϵͳ�Զ�����������ǰ������srv�ļ����ɵĶ�Ӧ��srv�ļ���ͷ�ļ���

bool add(exp7_524::AddThreeInts::Request  &req,
         exp7_524::AddThreeInts::Response &res)
		 //��������ṩ����intֵ��͵ķ���intֵ��request�����ȡ������������װ��response�ڣ���Щ�������Ͷ�������srv�ļ��ڲ�����������һ��booleanֵ��
{
	//���ڣ�����intֵ�Ѿ���ӣ���������response��Ȼ��һЩ����request��response����Ϣ����¼���������service��ɼ���󷵻�trueֵ��
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
  //���service�Ѿ���������������ROS�ڷ���������
  return 0;
}
