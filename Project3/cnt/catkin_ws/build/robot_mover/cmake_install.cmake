# Install script for directory: /mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364507_3/asn364508_1/work/catkin_ws/src/robot_mover

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364507_3/asn364508_1/work/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364507_3/asn364508_1/work/catkin_ws/build/robot_mover/catkin_generated/installspace/robot_mover.pc")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_mover/cmake" TYPE FILE FILES
    "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364507_3/asn364508_1/work/catkin_ws/build/robot_mover/catkin_generated/installspace/robot_moverConfig.cmake"
    "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364507_3/asn364508_1/work/catkin_ws/build/robot_mover/catkin_generated/installspace/robot_moverConfig-version.cmake"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_mover" TYPE FILE FILES "/mnt/data2/students/sub1/ddd_v1_w_37Vx_629048/asn364507_3/asn364508_1/work/catkin_ws/src/robot_mover/package.xml")
endif()

