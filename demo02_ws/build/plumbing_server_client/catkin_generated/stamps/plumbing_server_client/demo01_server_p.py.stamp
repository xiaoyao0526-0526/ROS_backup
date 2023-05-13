#! /usr/bin/env python

import rospy
from plumbing_server_client.srv import Addints,AddintsRequest,AddintsResponse

def doNum(request):
    
    num1 = request.num1
    num2 = request.num2

    rospy.loginfo("num1 = %d,num2 = %d",num1,num2)

    sum = num1 + num2

    response = AddintsResponse()
    response.sum = sum
    
    rospy.loginfo("sum = %d ",sum)

    return response
    pass

if __name__ == "__main__":

    rospy.init_node("heiShui")
    
    server = rospy.Service("addInts",Addints,doNum)

    rospy.loginfo("Strat")

    rospy.spin()
    pass