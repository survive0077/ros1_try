#! usr/bin/env python


import rospy
from turtlesim.srv import Spawn, SpawnRequest, SpawnResponse
import sys


if __name__ == "__main__":
    rospy.init_node("new_turtle_p")
    client = rospy.ServiceProxy("/spawn", Spawn)
    request = SpawnRequest()
    request.x = int(sys.argv[1])
    request.y = int(sys.argv[2])
    request.theta = float(sys.argv[3])
    request.name = sys.argv[4]
    client.wait_for_service()
    try:
        response = client.call(request)
        rospy.loginfo("Success. %s", response.name)
    except Exception as e:
        rospy.logerr("Failed")
