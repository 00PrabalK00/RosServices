from base_joy_controller_pkg.msg import base_msgs
import rospy
from base_joy_controller_pkg.srv import adcm, adcmResponse

class Basic:

    def __init__(self) -> None:              
        self.thruster_subs = rospy.Subscriber("/peepeepoopoo", base_msgs, self.__callback__, queue_size=2)
        self.channel_ary=[1500]*8
        self.arm_state= False


    def __callback__(self, msg):
        if (msg.arm == 1 and self.arm_state==False):
            self.arm_state = True
            
        elif(msg.arm == 0 and self.arm_state==True):
            self.arm_state = False

    def adcm_client(self):
        rospy.init_node("client_node")
        rospy.wait_for_service("/aaron")
        
        rate = rospy.Rate(1)
        
        while not rospy.is_shutdown():
                try:
                        arm_disarm = rospy.ServiceProxy("/aaron", adcm)
                        response = arm_disarm(self.arm_state)
                        rate.sleep()
                        
                except rospy.ServiceException as e:
                        rospy.logerr("Service call failed: %s" % e)

obj=Basic()


if __name__ == '__main__':
    obj.adcm_client()
