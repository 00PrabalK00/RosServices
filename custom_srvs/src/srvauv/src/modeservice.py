import rospy
from srvauv.srv import modes

class Basic:
    def __init__(self):
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
