#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

if __name__ == "__main__":

    rospy.init_node("sanDai")

    pub = rospy.Publisher("che",String,queue_size=10)

    msg = String()

    rate = rospy.Rate(0.5)

    count = 0

    rospy.sleep(3)
 
    while not rospy.is_shutdown():
        count+=1
        
        msg.data = "hello" + str(count)

        pub.publish(msg)

        rospy.loginfo("pub is %s",msg.data)

        rate.sleep()




    pass