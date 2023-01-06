#!/usr/bin/env python3

import rospy
from use_msg.msg import person


if __name__ == "__main__":
    rospy.init_node("pub_person_py")
    pub = rospy.Publisher("chat_py", person, queue_size=10)
    p = person()
    p.name = "Poooor Tom"
    p.age = 22
    p.height = 1.75
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        pub.publish(p)
        rospy.loginfo("Send %s, %li, %.2fm", p.name, p.age, p.height)
        p.age += 1
        rate.sleep()
