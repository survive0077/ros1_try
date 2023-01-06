#! /usr/biin/env python

import rospy
from ser_cli.srv import addints, addintsRequest, addintsResponse


def callback(request):
     num1 = request.num1
     num2 = request.num2
     sum = num1 + num2
     rospy.loginfo("The 2 numbers are %d, %d", num1, num2)
     response = addintsResponse()
     response.sum = sum
     rospy.loginfo("The sum is %d", sum)

     return response


if __name__ == "__main__":
    rospy.init_node("add_s_p")
    server = rospy.Service("addints_p", addints, callback)
    rospy.loginfo("Run successfully")
    rospy.spin()