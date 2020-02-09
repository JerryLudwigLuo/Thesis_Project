# CMake generated Testfile for 
# Source directory: /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/modules/features2d
# Build directory: /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/modules/features2d
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_features2d "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/bin/opencv_test_features2d" "--gtest_output=xml:opencv_test_features2d.xml")
set_tests_properties(opencv_test_features2d PROPERTIES  LABELS "Main;opencv_features2d;Accuracy" WORKING_DIRECTORY "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/test-reports/accuracy")
add_test(opencv_perf_features2d "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/bin/opencv_perf_features2d" "--gtest_output=xml:opencv_perf_features2d.xml")
set_tests_properties(opencv_perf_features2d PROPERTIES  LABELS "Main;opencv_features2d;Performance" WORKING_DIRECTORY "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/test-reports/performance")
add_test(opencv_sanity_features2d "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/bin/opencv_perf_features2d" "--gtest_output=xml:opencv_perf_features2d.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_features2d PROPERTIES  LABELS "Main;opencv_features2d;Sanity" WORKING_DIRECTORY "/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/test-reports/sanity")
