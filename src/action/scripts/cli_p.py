#! /usr/bin/env python

import rospy
import sys
import actionlib
from actionlib import SimpleActionClient
from action.msg import addintsGoal, addintsFeedback, addintsResult, addintsAction


def done_cb(state, result):
    if state == actionlib.GoalStatus.SUCCEEDED:
        rospy.loginfo("The result is %d", result.result)
    else:
        rospy.loginfo("Failed")


def active_cb():
    rospy.loginfo("Successfully connect")


def feedback_cb(feedback):
    rospy.loginfo("Percentage: %.2f%%", 100 * feedback.percent)


if __name__=="__main__":
    rospy.init_node("cli_p")
    client = SimpleActionClient("addints", addintsAction)
    client.wait_for_server()
    goal = addintsGoal()
    goal.num = int(sys.argv[1])
    client.send_goal(goal, done_cb, active_cb, feedback_cb)
    rospy.spin()