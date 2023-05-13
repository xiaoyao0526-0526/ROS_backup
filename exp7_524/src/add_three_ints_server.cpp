#include "ros/ros.h"
#include "exp7_524/AddThreeInts.h"//beginner_tutorials/AddThreeInts.hÊÇÓÉ±àÒëÏµÍ³×Ô¶¯žùŸÝÎÒÃÇÏÈÇ°ŽŽœšµÄsrvÎÄŒþÉú³ÉµÄ¶ÔÓŠžÃsrvÎÄŒþµÄÍ·ÎÄŒþ¡£

bool add(exp7_524::AddThreeInts::Request  &req,
         exp7_524::AddThreeInts::Response &res)
                 //Õâžöº¯ÊýÌá¹©ÁœžöintÖµÇóºÍµÄ·þÎñ£¬intÖµŽÓrequestÀïÃæ»ñÈ¡£¬¶ø·µ»ØÊýŸÝ×°ÈëresponseÄÚ£¬ÕâÐ©ÊýŸÝÀàÐÍ¶Œ¶šÒåÔÚsrvÎÄŒþÄÚ²¿£¬º¯Êý·µ»ØÒ»žöbooleanÖµ¡£
{
        //ÏÖÔÚ£¬ÁœžöintÖµÒÑŸ­ÏàŒÓ£¬²¢ŽæÈëÁËresponse¡£È»ºóÒ»Ð©¹ØÓÚrequestºÍresponseµÄÐÅÏ¢±»ŒÇÂŒÏÂÀŽ¡£×îºó£¬serviceÍê³ÉŒÆËãºó·µ»ØtrueÖµ¡£
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
  //ÕâÀï£¬serviceÒÑŸ­œšÁ¢ÆðÀŽ£¬²¢ÔÚROSÄÚ·¢²Œ³öÀŽ¡£
  return 0;
}
