import rospy
from base_joy_controller_pkg.srv import modes
from pymavlink import mavutil

master = mavutil.mavlink_connection("/dev/ttyACM0", baud=115200)

class Basic:
    def __init__(self):
        master.wait_heartbeat()
        self.mode = "STABILIZE"
        self.mode_stabilize = 0  
        self.mode_acro = 0       
        self.mode_manual = 0 

    def mode_switch(self):
        if self.mode not in master.mode_mapping():
            exit(1)
            mode_id = master.mode_mapping()[self.mode]
        
        master.mav.set_mode_send(
            master.target_system,
            mavutil.mavlink.MAV_MODE_FLAG_CUSTOM_MODE_ENABLED,
            mode_id
        )
        print("Mode set to", self.mode)

    def callback(self, request):
        self.mode = request.mode
        self.mode_switch()
        return self.mode

def mode():
    rospy.init_node("service_Mode_node")
    obj = Basic()
    service = rospy.Service("/modechange", modes, obj.callback)
    rospy.spin()

if __name__ == '__main__':
    mode()
