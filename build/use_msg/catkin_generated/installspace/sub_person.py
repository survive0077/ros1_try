#!/usr/bin/env python3

import rospy
from use_msg.msg import person


def callback(data):
    rospy.loginfo("Send %s, %li, %.2fm", data.name, data.age, data.height)


if __name__ == "__main__":
    rospy.init_node("sub_person_py")
    pub = rospy.Subscriber("chat_py", person, callback, queue_size=10)
    rospy.spin()
