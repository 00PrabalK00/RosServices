import rospy
from base_joy_controller_pkg.srv import modes
from pymavlink import mavutil

# Initialize MAVLink connection with the autopilot
master = mavutil.mavlink_connection("/dev/ttyACM0", baud=115200)

class Basic:
    def __init__(self):
        # Wait for heartbeat from the autopilot
        master.wait_heartbeat()
        # Initialize default mode and mode flags
        self.mode = "ACRO"
        self.mode_stabilize = 0  # Initialize mode_stabilize
        self.mode_acro = 0       # Initialize mode_acro
        self.mode_manual = 0     # Initialize mode_manual



    def callback(self, request):
        # Callback function for the mode change service
        self.currmode = request.mode
        return self.currmode

def mode():
    rospy.init_node("service_Mode_node")
    obj = Basic()
    service = rospy.Service("/modechange", modes, obj.callback)
    rospy.spin()

if __name__ == '__main__':
    # Start the mode change service
    mode()
