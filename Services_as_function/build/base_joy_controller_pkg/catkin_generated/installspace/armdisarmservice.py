import rospy
from base_joy_controller_pkg.srv import adcm, adcmResponse
from pymavlink import mavutil
from optparse import OptionParser
from geometry_msgs.msg import Quaternion
from base_joy_controller_pkg.msg import base_msgs

# Initialize MAVLink connection with the autopilot
master = mavutil.mavlink_connection("/dev/ttyACM0", baud=115200)

class Basic:

    def __init__(self) -> None:              
        # Wait for heartbeat from the autopilot
        master.wait_heartbeat()
        # Initialize arm state as False
        self.arm_state = False

    def arm(self):
        # Wait for heartbeat to ensure a valid connection
        master.wait_heartbeat()
        # Send MAV_CMD_COMPONENT_ARM_DISARM command to arm the vehicle
        master.mav.command_long_send(
            master.target_system,
            master.target_component,
            mavutil.mavlink.MAV_CMD_COMPONENT_ARM_DISARM,
            0, 1, 0, 0, 0, 0, 0, 0)
        print("Arm command sent to pix")

    def disarm(self):
        # Send MAV_CMD_COMPONENT_ARM_DISARM command to disarm the vehicle
        master.mav.command_long_send(
            master.target_system,
            master.target_component,
            mavutil.mavlink.MAV_CMD_COMPONENT_ARM_DISARM,
            0, 0, 0, 0, 0, 0, 0, 0)
        print("Sent disarm")

    def callback(self, request):
        # Callback function for the arm/disarm service
        if request.state:
            self.arm()  # Arm the vehicle
        else:
            self.disarm()  # Disarm the vehicle
        return adcmResponse(request.state)

def arm():
    # Initialize ROS node and arm/disarm service
    rospy.init_node("service_node")
    service = rospy.Service("/armdisarm", adcm, obj.callback)
    rospy.spin()

if __name__ == '__main__':
    # Create an instance of the Basic class
    obj = Basic()
    # Start the arm/disarm service
    arm()
