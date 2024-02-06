import rospy
from base_joy_controller_pkg.srv import modes
from pymavlink import mavutil

# Initialize MAVLink connection with the autopilot
master = mavutil.mavlink_connection("/dev/ttyACM0", baud=115200)

class Basic:
    def __init__(self):
        master.wait_heartbeat()
        self.mode = "MANUAL"
        self.mode_stabilize = 0
        self.mode_acro = 0
        self.mode_manual = 0


    def callback(self, request):
        self.currmode = request.mode
        return self.currmode

def mode():
    rospy.init_node("service_Mode_node")
    obj = Basic()
    service = rospy.Service("/modechange", modes, obj.callback)
    rospy.spin()

if __name__ == '__main__':
    mode()
