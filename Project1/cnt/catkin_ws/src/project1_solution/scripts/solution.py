#!/usr/bin/env python
import rospy

from std_msgs.msg import Int16
from project1_solution.msg import TwoInts

def callback(data):
    ### YOUR CODE HERE ###
    message = Int16(data.a + data.b)
    rospy.loginfo(str(message))
    pub.publish(message)
    
def listener():
    global pub
 
    rospy.init_node('solution', anonymous = True)
    rospy.Subscriber("two_ints", TwoInts, callback)
    pub = rospy.Publisher("sum", Int16, queue_size=1)
    rospy.spin()
    
if __name__=="__main__":
    try:
        listener()
    except rospy.ROSInterruptException:
        pass
