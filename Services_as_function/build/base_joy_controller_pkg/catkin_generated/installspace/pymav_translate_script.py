#!/usr/bin/python3
import rospy
from pymavlink import mavutil
from optparse import OptionParser
from base_joy_controller_pkg.msg import base_msgs
from base_joy_controller_pkg.srv import adcm, adcmResponse
from base_joy_controller_pkg.srv import modes, modesResponse

class Basic:

    def __init__(self) -> None:
        self.master = mavutil.mavlink_connection("/dev/ttyACM0", baud=115200)
        self.check_services()
        self.thruster_subs = rospy.Subscriber("/peepeepoopoo", base_msgs, self.__callback__, queue_size=2)
        self.channel_ary = [1500] * 8
        self.master.wait_heartbeat()
        self.mode = "STABILIZE"
        self.arm_state = False
    def check_services(self):
        rospy.logwarn("Waiting for /modechange and /armdisarm services to be available...")
        rospy.wait_for_service("/modechange")
        rospy.wait_for_service("/armdisarm")
        rospy.logwarn("Services available. Proceeding with initialization.")
    def __callback__(self, msg):
        self.channel_ary[0] = msg.pitch 
        self.channel_ary[1] = msg.roll
        self.channel_ary[2] = msg.thrust
        self.channel_ary[3] = msg.yaw
        self.channel_ary[4] = msg.forward
        self.channel_ary[5] = msg.lateral

        if msg.arm == 1 and not self.arm_state:
            self.adcm_client()
            self.arm_state = True
            
        elif msg.arm == 0 and self.arm_state:
            self.adcm_client()
            self.arm_state = False

        if self.mode != msg.mode:
            self.mode = msg.mode
            self.arm_state=False
            self.adcm_client()
            self.mode_change()


            if  self.arm_state:
                self.mode = msg.mode
                self.mode_switch()
            else:
                print("DISARM FIRST")

    def mode_switch(self):
        if self.mode not in self.master.mode_mapping():
            print('Unknown mode : {}'.format(self.mode))
            print('Try:', list(self.master.mode_mapping().keys()))
            exit(1)
        mode_id = self.master.mode_mapping()[self.mode]
        self.master.mav.set_mode_send(
            self.master.target_system,
            mavutil.mavlink.MAV_MODE_FLAG_CUSTOM_MODE_ENABLED,
            mode_id)
        print("Mode changed to:", self.mode)
        
    def set_rc_channel_pwm(self, id, pwm):
        if id < 1:
            print("Channel does not exist.")
            return

        if id < 9:
            rc_channel_values = [65535 for _ in range(8)]
            rc_channel_values[id - 1] = pwm
            self.master.mav.rc_channels_override_send(
                self.master.target_system,
                self.master.target_component,
                *rc_channel_values)

    def actuate(self):
        self.set_rc_channel_pwm(1, int(self.channel_ary[0]))
        self.set_rc_channel_pwm(2, int(self.channel_ary[1]))
        self.set_rc_channel_pwm(3, int(self.channel_ary[2]))
        self.set_rc_channel_pwm(4, int(self.channel_ary[3]))
        self.set_rc_channel_pwm(5, int(self.channel_ary[4]))
        self.set_rc_channel_pwm(6, int(self.channel_ary[5]))
        self.set_rc_channel_pwm(7, int(self.channel_ary[6]))
        self.set_rc_channel_pwm(8, int(self.channel_ary[7]))

    def adcm_client(self):
        try:
            arm_disarm = rospy.ServiceProxy("/armdisarm", adcm)
            response = arm_disarm(self.arm_state)  
        except rospy.ServiceException as e:
            rospy.logerr("Service call failed: %s" % e)
    def mode_change(self):
        try:
            mode_change= rospy.ServiceProxy("/modechange",modes)
            response = mode_change(self.mode)
        except rospy.ServiceException as e:
            rospy.logerr("Service call failed: %s" % e)
            arm_disarm = rospy.ServiceProxy("/aaron", adcm)
            response = arm_disarm(self.arm_state)  
        except rospy.ServiceException as e:
            rospy.logerr("Service call failed: %s" % e)
if __name__ == "__main__":
    rospy.init_node('listener', anonymous=True)
    obj = Basic() 
    obj.actuate()
    rospy.spin()
