# Install script for directory: /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/jerryluo/Learn/Thesis_Project/venv/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/python" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/dft.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/distrans.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/camera_calibration_show_extrinsics.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/kmeans.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/stereo_match.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/gaussian_mix.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/letter_recog.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/plane_ar.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/lappyr.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/contours.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/lk_homography.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/edge.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/hist.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/floodfill.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/grabcut.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/common.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/gabor_threads.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/facedetect.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/lk_track.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/video_v4l2.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/plane_tracker.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/calibrate.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/digits.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/peopledetect.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/coherence.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/kalman.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/inpaint.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/digits_video.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/mouse_and_match.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/morphology.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/logpolar.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/_doc.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/tst_scene_render.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/opt_flow.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/find_obj.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/video_threaded.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/opencv_version.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/color_histogram.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/browse.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/camshift.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/houghcircles.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/turing.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/squares.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/houghlines.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/video.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/mser.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/digits_adjust.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/demo.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/_coverage.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/watershed.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/feature_homography.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/fitline.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/asift.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/mosse.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/texture_flow.py"
    "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/python/deconvolution.py"
    )
endif()

