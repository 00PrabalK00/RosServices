import rospy
from base_joy_controller_pkg.srv import adcm, adcmResponse
from pymavlink import mavutil
from optparse import OptionParser
from geometry_msgs.msg import Quaternion
from base_joy_controller_pkg.msg import base_msgs

master = mavutil.mavlink_connection("/dev/ttyACM0", baud=115200)

class Basic:

    def __init__(self) -> None:              
        self.thruster_subs = rospy.Subscriber("/service", base_msgs, self.callback, queue_size=2)
        self.channel_ary = [1500] * 8
        master.wait_heartbeat()
        self.mode = "MANUAL"
        self.arm_state = False

    def arm(self):
        master.wait_heartbeat()
        master.mav.command_long_send(
            master.target_system,
            master.target_component,
            mavutil.mavlink.MAV_CMD_COMPONENT_ARM_DISARM,
            0, 1, 0, 0, 0, 0, 0, 0)
        print("Arm command sent to pix")

    def disarm(self):
        master.wait_heartbeat()
        master.mav.command_long_send(
            master.target_system,
            master.target_component,
            mavutil.mavlink.MAV_CMD_COMPONENT_ARM_DISARM,
            0, 0, 0, 0, 0, 0, 0, 0)
        print("Sent disarm")

    def callback(self, request):
        if request.state:
            self.arm()
        else:
            self.disarm()           
        return adcmResponse(request.state)

def arm():
    rospy.init_node("service_node")
    service = rospy.Service("/aaron", adcm, obj.callback)
    rospy.spin()

if __name__ == '__main__':
    obj = Basic()
    arm()
