#! /usr/bin/env python

import rospy
from std_msgs.msg import String

def doMsg(msg):
    rospy.loginfo("sub is %s",msg.data)

if __name__ == "__main__":

    rospy.init_node("xiaoHong")

    #sub = rospy.Subscriber("che",String,doMsg,queue_size=10)
    sub = rospy.Subscriber("fang",String,doMsg,queue_size=10)

    rospy.spin()

    pass