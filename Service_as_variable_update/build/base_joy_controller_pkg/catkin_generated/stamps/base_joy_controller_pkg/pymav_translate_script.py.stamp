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
        self.thruster_subs = rospy.Subscriber("/peepeepoopoo", base_msgs, self.__callback__, queue_size=2)
        self.channel_ary = [1500] * 8
        self.master.wait_heartbeat()
        self.mode = "MANUAL"
        self.arm_state = False

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

    def arm(self):
        self.master.wait_heartbeat()
        self.master.mav.command_long_send(
            self.master.target_system,
            self.master.target_component,
            mavutil.mavlink.MAV_CMD_COMPONENT_ARM_DISARM,
            0, 1, 0, 0, 0, 0, 0, 0)
        print("Arm command sent to pix")

    def disarm(self):
        self.master.mav.command_long_send(
            self.master.target_system,
            self.master.target_component,
            mavutil.mavlink.MAV_CMD_COMPONENT_ARM_DISARM,
            0, 0, 0, 0, 0, 0, 0, 0)
        print("Sent disarm")
    def mode_switch(self):
        # Check if the specified mode is valid
        if self.mode not in self.master.mode_mapping():
            exit(1)
        
        # Get the mode ID from the mode mapping
        mode_id = self.master.mode_mapping()[self.mode]
        
        # Send set mode command to the autopilot
        self.master.mav.set_mode_send(
            self.master.target_system,
            mavutil.mavlink.MAV_MODE_FLAG_CUSTOM_MODE_ENABLED,
            mode_id
        )
        print("Mode set to", self.mode)
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
            print(response.arm)
            if(response.arm):
                self.arm()
            else:
                self.disarm()
        except rospy.ServiceException as e:
            rospy.logerr("Service call failed: %s" % e)
            return False


    def mode_change(self):
        try:
            mode_change = rospy.ServiceProxy("/modechange", modes)
            response = mode_change(self.mode)
            print(response.currmode)
            return response
        except rospy.ServiceException as e:
            rospy.logerr("Service call failed: %s" % e)
            return None
if __name__ == "__main__":
    rospy.init_node('listener', anonymous=True)
    obj = Basic() 
    obj.actuate()

    rospy.spin()
