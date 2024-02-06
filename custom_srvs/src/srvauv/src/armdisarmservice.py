import rospy
from srvauv.srv import adcm, adcmResponse


class Basic:

    def __init__(self) -> None:              
        self.arm = False

    def callback(self, request):
        self.arm = request.state
        return adcmResponse(self.arm)

def arm():
    rospy.init_node("service_node")
    obj = Basic()
    service = rospy.Service("/armdisarm", adcm, obj.callback)
    rospy.spin()

if __name__ == '__main__':
    arm()
