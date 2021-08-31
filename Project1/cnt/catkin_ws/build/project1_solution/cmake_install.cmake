# Install script for directory: /mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364503_1/asn364504_1/work/catkin_ws/src/project1_solution

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364503_1/asn364504_1/work/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/project1_solution/msg" TYPE FILE FILES "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364503_1/asn364504_1/work/catkin_ws/src/project1_solution/msg/TwoInts.msg")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/project1_solution/cmake" TYPE FILE FILES "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364503_1/asn364504_1/work/catkin_ws/build/project1_solution/catkin_generated/installspace/project1_solution-msg-paths.cmake")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364503_1/asn364504_1/work/catkin_ws/devel/include/project1_solution")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364503_1/asn364504_1/work/catkin_ws/devel/share/roseus/ros/project1_solution")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364503_1/asn364504_1/work/catkin_ws/devel/share/common-lisp/ros/project1_solution")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364503_1/asn364504_1/work/catkin_ws/devel/share/gennodejs/ros/project1_solution")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python" -m compileall "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364503_1/asn364504_1/work/catkin_ws/devel/lib/python2.7/dist-packages/project1_solution")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364503_1/asn364504_1/work/catkin_ws/devel/lib/python2.7/dist-packages/project1_solution")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364503_1/asn364504_1/work/catkin_ws/build/project1_solution/catkin_generated/installspace/project1_solution.pc")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/project1_solution/cmake" TYPE FILE FILES "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364503_1/asn364504_1/work/catkin_ws/build/project1_solution/catkin_generated/installspace/project1_solution-msg-extras.cmake")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/project1_solution/cmake" TYPE FILE FILES
    "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364503_1/asn364504_1/work/catkin_ws/build/project1_solution/catkin_generated/installspace/project1_solutionConfig.cmake"
    "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364503_1/asn364504_1/work/catkin_ws/build/project1_solution/catkin_generated/installspace/project1_solutionConfig-version.cmake"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/project1_solution" TYPE FILE FILES "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364503_1/asn364504_1/work/catkin_ws/src/project1_solution/package.xml")
endif()

