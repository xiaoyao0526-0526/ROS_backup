#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
import math

PI = 3.14159265358979323846

def main():
    rospy.init_node('geometry_msgs')
    #topic = "cmd_vel_mux/input/teleop"
    topic = "/turtle1/cmd_vel"
    cmdVelPub = rospy.Publisher(topic, Twist, queue_size=1)
    rate = rospy.Rate(40)
    rospy.loginfo("exbot_example_move python start...")

    linear_speed = 0.25
    goal_distance = 1.00
    linear_duration = goal_distance / linear_speed

    angular_speed = 0.58
    goal_angle = PI/8
    angular_duration = goal_angle / angular_speed

    one_flag = 0
    speed = Twist()

    while not rospy.is_shutdown():

        # point1
        if one_flag == 0:
            for i in range(1):
                # zhuanjiao
                rospy.loginfo("one")
                speed = Twist()  # stop car
                ticks = int(angular_duration * 0 * rate.sleep_dur.to_sec())
                speed.angular.z = angular_speed

                for t in range(ticks):
                    cmdVelPub.publish(speed)
                    rate.sleep()

                # stop
                speed = Twist()  # 速度清零
                cmdVelPub.publish(Twist())  # 清零后发话题
                rospy.sleep(1)  # 暂停程序1秒钟

                # zhixianzou
                ticks = int(linear_duration * rate.sleep_dur.to_sec() * 3.96)
                speed.linear.x = linear_speed

                for t in range(ticks):
                    cmdVelPub.publish(speed)
                    rate.sleep()

                cmdVelPub.publish(Twist())  # 发话题
                rospy.loginfo("Twist")
                rate.sleep()
                one_flag = 1

        # point2
        if one_flag == 1:
            for i in range(1):
                # zhuanjiao
                speed = Twist()  # stop car
                ticks = int(angular_duration * 16 * rate.sleep_dur.to_sec())
                speed.angular.z = -angular_speed

                for t in range(ticks):
                    cmdVelPub.publish(speed)
                    rate.sleep()

                # stop
                speed = Twist()
                cmdVelPub.publish(Twist())
                rospy.sleep(1)

                # zhixianzou
                ticks = int(linear_duration * rate.sleep_dur.to_sec() * 1.5)
                speed.linear.x = linear_speed

                for t in range(ticks):
                    cmdVelPub.publish(speed)
                    rate.sleep()

                cmdVelPub.publish(Twist())
                rate.sleep()
                one_flag = 2

        # point3
        if one_flag == 2:
            for i in range(1):
                # zhuanjiao
                speed = Twist()  # stop car
                ticks = int(angular_duration * 12 * rate.sleep_dur.to_sec())
                speed.angular.z = -angular_speed

                for t in range(ticks):
                    cmdVelPub.publish(speed)
                    rate.sleep()

                # stop
                speed = Twist()
                cmdVelPub.publish(Twist())
                rospy.sleep(1)

                # zhixianzou
                ticks = int(linear_duration * rate.sleep_dur.to_sec() * 3.42)
                speed.linear.x = linear_speed

                for t in range(ticks):
                    cmdVelPub.publish(speed)
                    rate.sleep()

                cmdVelPub.publish(Twist())
                rate.sleep()
                one_flag = 3

        # point4
        if one_flag == 3:
            for i in range(1):
                # zhuanjiao
                speed = Twist()  # stop car
                ticks = int(angular_duration * 12 * rate.sleep_dur.to_sec())
                speed.angular.z = -angular_speed

                for t in range(ticks):
                    cmdVelPub.publish(speed)
                    rate.sleep()

                # stop
                speed = Twist()
                cmdVelPub.publish(Twist())
                rospy.sleep(1)

                # zhixianzou
                ticks = int(linear_duration * rate.sleep_dur.to_sec() * 2)
                speed.linear.x = linear_speed

                for t in range(ticks):
                    cmdVelPub.publish(speed)
                    rate.sleep()

                cmdVelPub.publish(Twist())
                rate.sleep()
                one_flag = 4

            # 继续在这里添加其他点的运动逻辑

            rospy.spin()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass