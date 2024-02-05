#include<base_joy_controller_pkg/base_joy_subs.hpp>
#include <ros/ros.h>
#include<base_joy_controller_pkg/base_msgs.h>


//run the joy node with:
// rosrun joy joy_node _autorepeat_rate:=1000 --dev /dev/input/js0 
int main(int argc, char **argv) {
    ros::init(argc, argv, "base_joy_controller_node");
    ros::NodeHandle nh;
    controller obj= controller(nh);
    
    while(ros::ok()){
        ros::spinOnce();
        //std::cout << "publishing data";
        //obj.publish_data();
        //ROS_INFO("publishing command msg");
    }
}
