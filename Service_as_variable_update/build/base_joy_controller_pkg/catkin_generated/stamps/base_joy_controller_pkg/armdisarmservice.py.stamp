import rospy
from base_joy_controller_pkg.srv import adcm, adcmResponse
from pymavlink import mavutil
from optparse import OptionParser
from geometry_msgs.msg import Quaternion
from base_joy_controller_pkg.msg import base_msgs
master = mavutil.mavlink_connection("/dev/ttyACM0", baud=115200)

class Basic:

    def __init__(self) -> None:              
        master.wait_heartbeat()
        self.arm = False

    def callback(self, request):
        self.arm = request.state
        return adcmResponse(self.arm)

def arm():
    rospy.init_node("service_node")
    service = rospy.Service("/armdisarm", adcm, obj.callback)
    rospy.spin()

if __name__ == '__main__':
    obj = Basic()
    arm()
