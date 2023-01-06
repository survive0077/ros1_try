#! /usr/bin/env ppython

import rospy
from actionlib import SimpleActionServer
from action.msg import addintsAction, addintsFeedback, addintsResult


class myAction:
    def __init__(self):
        # 关闭自动启动
        self.server = SimpleActionServer("addints", addintsAction, self.callback, False)
        self.server.start()
        rospy.loginfo("Server start")
    
    def callback(self, goal):
        goal_num = goal.num
        rospy.loginfo("The target number is %d", goal_num)
        rate = rospy.Rate(10)
        sum = 0
        for i in range(1, goal_num + 1):
            sum = sum + i
            rate.sleep()
            fb = addintsFeedback()
            fb.percent = i / goal_num
            self.server.publish_feedback(fb)
        result = addintsResult()
        result.result = sum
        self.server.set_succeeded(result)


if __name__ == "__main__":
    rospy.init_node("ser_p")
    ser = myAction()
    rospy.spin()
    