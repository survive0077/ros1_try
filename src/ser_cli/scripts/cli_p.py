import rospy
from ser_cli.srv import addints
import sys


if __name__ == "__main__":
    if len(sys.argv) != 3:
        rospy.logerr("Number error")
        sys.exit(1)
    
    rospy.init_node("add_c_p")
    client = rospy.ServiceProxy("addints_p", addints)
    num1 = int(sys.argv[1])
    num2 = int(sys.argv[2])

    # rospy.wait_for_service("addints_p")    
    client.wait_for_service()
    response = client.call(num1, num2)
    rospy.loginfo("The sum is %d", response.sum)
      