## Project 5 Description

In the previous project, you implemented a Cartesian controller for a 7-jointed robot arm. With this you could interactively control the position of the end-effector in Cartesian space. However, this method of control is not sufficient in the presence of obstacles. In order for the robot end-effector to reach a desired pose without collisions with any obstacles present in its environment we need to implement motion planning. In this project you will code up a Rapidly-exploring Random Tree (RRT) motion planner for the same 7-jointed robot arm. This will enable you to **interactively maneuver the end-effector to the desired pose collision-free.**

**The motion_plan(...) function**

You are given starter code including the motion_planning package, which in turn contains the motion_planning.py file you must edit. Specifically, you must complete the motion_plan function. The arguments to this function and the methods provided by the MoveArm class are all you need to implement an RRT motion planning algorithm. 

The arguments to the motion_plan function are:

- q_start: list of joint values of the robot at the starting position. This is the position in configuration space from which to start
- q_goal: list of joint values of the robot at the goal position. This is the position in configuration space for which to plan
- q_min: list of lower joint limits
- q_max: list of upper joint limits

You can use the provided is_state_valid(...) method to check if a given point in configuration space is valid or causes a collision. The motion_plan function must return a path for the robot to follow. A path consists of a list of points in C-space that the robot must go through, where each point in C-space is in turn a list specifying the values for all the robot joints. It is your job to make sure that this path is collision free.

## Algorithm Overview

The problem we are facing is to find a path that takes the robot from a give start to another end position without colliding with any objects on the way. This is the problem of motion planning. The RRT algorithm tackles this problem by placing nodes in configuration space at random and connecting them in a tree. Before a new node is added to the tree, the algorithm also checks if the path between them is collision free. Once the tree reaches the goal position, we can find a path between start and goal by following the tree back to its root. 

The algorithm follows the steps presented in detail in the lecture on Rapidly-exploring Random Trees.  Let us break this task into smaller steps:

- Create an RRT node object. This object must hold both a position in configuration space and a reference to its parent node. You can then store each new node in a list
- The main part of the algorithm is a loop, in which you expand the tree until it reaches the goal. You might also want to include some additional exit conditions (maximum number of nodes, a time-out) such that your algorithm does not run forever on a problem that might be impossible to solve. In this loop, you should do the following:
    - Sample a random point in configuration space within the joint limits. You can use the random.random() function provided by Python. Remember that a "point" in configuration space must specify a value for each robot joint, and is thus 7-dimensional (in the case of this robot)!
    - Find the node already in your tree that is closest to this random point.
    - Find the point that lies a predefined distance (e.g. 0.5) from this existing node in the direction of the random point.
    - Check if the path from the closest node to this point is collision free. To do so you must discretize the path and check the resulting points along the path. You can use the is_state_valid method to do so. The MoveArm class has a member q_sample - a list that defines the minimum discretization for each joint. You must make sure that you sample finely enough that this minimum is respected for each joint.
    - If the path is collision free, add a new node with at the position of the point and with the closest node as a parent.
    - Check if the path from this new node to the goal is collision free. If so, add the goal as a node with the new node as a parent. The tree is complete and the loop can be exited.
- Trace the tree back from the goal to the root and for each node insert the position in configuration space to a list of joints values.
- As we have been following the branches of the tree the path computed this way can be very coarse and more complicated than necessary. Therefore, you must check this list of joint values for shortcuts. Similarly to what you were doing when constructing the tree, you can check if the path between any two points in this list is collision free. You can delete any points between two points connected by a collision free path.
- Return the resulting trimmed path.

![Project5](https://github.com/edaaydinea/CSMM103X-Robotics/blob/main/Project5/Project5.jpg)

![Project5_1](https://github.com/edaaydinea/CSMM103X-Robotics/blob/main/Project5/Project5_1.jpg)

![Project5_2](https://github.com/edaaydinea/CSMM103X-Robotics/blob/main/Project5/Project5_2.jpg)

![Project5_3](https://github.com/edaaydinea/CSMM103X-Robotics/blob/main/Project5/Project5_3.jpg)