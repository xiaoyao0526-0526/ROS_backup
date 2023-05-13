#!/usr/bin/env python3

import rospy
from plumbing_pub_sub.msg import Person

if __name__ == "__main__":

    rospy.init_node("daMa")

    pub = rospy.Publisher("jiaoSheTou",Person,queue_size=10)

    p = Person()
    p.name = "xiaoHai"
    p.age = 8
    p.height = 1.85

    rate = rospy.Rate(1)

    rospy.sleep(3)

    while not rospy.is_shutdown():
        pub.publish(p)
        rospy.loginfo("pub is :%s,%d,%.2f",p.name,p.age,p.height)
        rate.sleep()
    pass