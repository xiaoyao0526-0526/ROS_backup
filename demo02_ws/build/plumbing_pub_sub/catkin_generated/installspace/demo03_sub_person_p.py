#!/usr/bin/env python3

import rospy
from plumbing_pub_sub.msg import Person

def doMsg(p):
    rospy.loginfo("sub is :%s,%d,%.2f",p.name,p.age,p.height)

if __name__ == "__main__":

    rospy.init_node("luRen")

    sub = rospy.Subscriber("jiaoSheTou",Person,doMsg,queue_size=10)

    rospy.spin()

    pass

