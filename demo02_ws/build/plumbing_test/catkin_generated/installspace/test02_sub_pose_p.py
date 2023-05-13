#!/usr/bin/env python3

import rospy
from turtlesim.msg import Pose

def doPose(pose):
    rospy.loginfo("P->turtle zuobiao(%.2f,%.2f),jiaodu(%.2f),shuiping(%.2f),jiasudu(%.2f)",
                  pose.x,pose.y,pose.theta,pose.linear_velocity,pose.angular_velocity)

if __name__ == "__main__":
    
    rospy.init_node("sub_pose_p")

    sub = rospy.Subscriber("/turtle1/pose",Pose,doPose,queue_size=10)

    rospy.spin()

    pass
