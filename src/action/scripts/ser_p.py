import rospy
from actionlib import simple_action_server
from action.scripts import 


if __name__ == "__main__":
    rospy.init_node("ser_p")
    ser = simple_action_server("addints", )