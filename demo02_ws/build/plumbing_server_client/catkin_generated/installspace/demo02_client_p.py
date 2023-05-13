#!/usr/bin/env python3

import rospy
from plumbing_server_client.srv import Addints,AddintsRequest,AddintsResponse
import sys

if __name__ == "__main__":

    if len(sys.argv)!= 3 :
        rospy.logerr("Error")
        sys.exit(1)

    rospy.init_node("erHei")

    client = rospy.ServiceProxy("addInts",Addints)

    client.wait_for_service()

    response = client.call(int(sys.argv[1]),int(sys.argv[2]))

    rospy.loginfo("sum = %d",response.sum)

    pass