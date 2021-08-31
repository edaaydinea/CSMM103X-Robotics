#!/usr/bin/env python

"""
This is a skeleton code.
"""

import rospy

#!/usr/bin/env python  
import rospy

import numpy

import tf
import tf2_ros
import geometry_msgs.msg

def message_from_transform(T):
    msg =geometry_msgs.msg.Transform()
    q = tf.transformations.quaternion_from_matrix(T)
    translation = tf.transformations.translation_from_matrix(T)

    msg.translation.x = translation[0]
    msg.translation.y = translation[1]
    msg.translation.z = translation[2]

    msg.rotation.x = q[0]
    msg.rotation.y = q[1]
    msg.rotation.z = q[2]
    msg.rotation.w = q[3]

    return msg

def publish_transforms():

    # The transfrom from base frame to object_frame

    T1 = numpy.dot(tf.transformations.quaternion_matrix(
            tf.transformations.quaternion_from_euler(0.79,0.0,0.79)),
        tf.transformations.translation_matrix((0.0,1.0,1.0))) 

    object_transform = geometry_msgs.msg.TransformStamped()
    object_transform.header.stamp = rospy.Time.now()
    object_transform.header.frame_id = "base_frame"
    object_transform.child_frame_id = "object_frame"

    object_transform.transform = message_from_transform(T1)

    br.sendTransform(object_transform)

    # The transform from base frame to object frame

    T2 = numpy.dot(tf.transformations.quaternion_matrix(
            tf.transformations.quaternion_from_euler(0,0,1.5)),
        tf.transformations.translation_matrix((0.0,-1.0,0.0)))

    robot_transform = geometry_msgs.msg.TransformStamped()
    robot_transform.header.stamp = rospy.Time.now()
    robot_transform.header.frame_id = "base_frame"
    robot_transform.child_frame_id = "robot_frame"

    robot_transform.transform = message_from_transform(T2)

    br.sendTransform(robot_transform)

    # transform from base_frame to camera_frame  
    transform_base_object = T1
    transform_base_robot = T2

    transform_robot_camera = tf.transformations.translation_matrix((0.0,0.1,0.1))
    transform_base_camera = numpy.dot(T2,transform_robot_camera)
    transform_camera_object = numpy.dot(tf.transformations.inverse_matrix(transform_base_camera),transform_base_object)

    vector = tf.transformations.translation_from_matrix(transform_camera_object) / numpy.linalg.norm(
                tf.transformations.translation_from_matrix(transform_camera_object))

    x = [1,0,0]
    w = numpy.cross(x,vector)
    angle = numpy.arccos(numpy.dot(x,vector))

    T3 = numpy.dot(transform_robot_camera,
            tf.transformations.quaternion_matrix(
                tf.transformations.quaternion_about_axis(angle,w)))

    camera_transform = geometry_msgs.msg.TransformStamped()
    camera_transform.header.stamp = rospy.Time.now()
    camera_transform.header.frame_id = "robot_frame"
    camera_transform.child_frame_id = "camera_frame"
        
    camera_transform.transform = message_from_transform(T3)
    
    br.sendTransform(camera_transform)

if __name__ == '__main__':
    rospy.init_node('project2_solution')

    br = tf2_ros.TransformBroadcaster()
    rospy.sleep(0.5)

    while not rospy.is_shutdown():
        publish_transforms()
        rospy.sleep(0.05)