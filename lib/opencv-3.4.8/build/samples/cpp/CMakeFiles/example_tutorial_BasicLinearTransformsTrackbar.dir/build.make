# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build

# Include any dependencies generated for this target.
include samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/depend.make

# Include the progress variables for this target.
include samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/progress.make

# Include the compile flags for this target's objects.
include samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/flags.make

samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.o: samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/flags.make
samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.o: ../samples/cpp/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.o"
	cd /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/samples/cpp && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.o -c /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/cpp/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp

samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.i"
	cd /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/samples/cpp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/cpp/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp > CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.i

samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.s"
	cd /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/samples/cpp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/cpp/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp -o CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.s

samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.o.requires:

.PHONY : samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.o.requires

samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.o.provides: samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.o.requires
	$(MAKE) -f samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/build.make samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.o.provides.build
.PHONY : samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.o.provides

samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.o.provides.build: samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.o


# Object files for target example_tutorial_BasicLinearTransformsTrackbar
example_tutorial_BasicLinearTransformsTrackbar_OBJECTS = \
"CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.o"

# External object files for target example_tutorial_BasicLinearTransformsTrackbar
example_tutorial_BasicLinearTransformsTrackbar_EXTERNAL_OBJECTS =

bin/example_tutorial_BasicLinearTransformsTrackbar: samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.o
bin/example_tutorial_BasicLinearTransformsTrackbar: samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/build.make
bin/example_tutorial_BasicLinearTransformsTrackbar: 3rdparty/lib/libippiw.a
bin/example_tutorial_BasicLinearTransformsTrackbar: 3rdparty/ippicv/ippicv_lnx/icv/lib/intel64/libippicv.a
bin/example_tutorial_BasicLinearTransformsTrackbar: lib/libopencv_videostab.so.3.4.8
bin/example_tutorial_BasicLinearTransformsTrackbar: lib/libopencv_shape.so.3.4.8
bin/example_tutorial_BasicLinearTransformsTrackbar: lib/libopencv_ml.so.3.4.8
bin/example_tutorial_BasicLinearTransformsTrackbar: lib/libopencv_objdetect.so.3.4.8
bin/example_tutorial_BasicLinearTransformsTrackbar: lib/libopencv_highgui.so.3.4.8
bin/example_tutorial_BasicLinearTransformsTrackbar: lib/libopencv_stitching.so.3.4.8
bin/example_tutorial_BasicLinearTransformsTrackbar: lib/libopencv_dnn.so.3.4.8
bin/example_tutorial_BasicLinearTransformsTrackbar: lib/libopencv_calib3d.so.3.4.8
bin/example_tutorial_BasicLinearTransformsTrackbar: lib/libopencv_features2d.so.3.4.8
bin/example_tutorial_BasicLinearTransformsTrackbar: lib/libopencv_photo.so.3.4.8
bin/example_tutorial_BasicLinearTransformsTrackbar: lib/libopencv_superres.so.3.4.8
bin/example_tutorial_BasicLinearTransformsTrackbar: lib/libopencv_viz.so.3.4.8
bin/example_tutorial_BasicLinearTransformsTrackbar: lib/libopencv_flann.so.3.4.8
bin/example_tutorial_BasicLinearTransformsTrackbar: lib/libopencv_videoio.so.3.4.8
bin/example_tutorial_BasicLinearTransformsTrackbar: lib/libopencv_imgcodecs.so.3.4.8
bin/example_tutorial_BasicLinearTransformsTrackbar: lib/libopencv_video.so.3.4.8
bin/example_tutorial_BasicLinearTransformsTrackbar: lib/libopencv_imgproc.so.3.4.8
bin/example_tutorial_BasicLinearTransformsTrackbar: lib/libopencv_core.so.3.4.8
bin/example_tutorial_BasicLinearTransformsTrackbar: samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/example_tutorial_BasicLinearTransformsTrackbar"
	cd /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/samples/cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/build: bin/example_tutorial_BasicLinearTransformsTrackbar

.PHONY : samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/build

samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/requires: samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/tutorial_code/HighGUI/BasicLinearTransformsTrackbar.cpp.o.requires

.PHONY : samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/requires

samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/clean:
	cd /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/samples/cpp && $(CMAKE_COMMAND) -P CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/cmake_clean.cmake
.PHONY : samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/clean

samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/depend:
	cd /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8 /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/cpp /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/samples/cpp /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/cpp/CMakeFiles/example_tutorial_BasicLinearTransformsTrackbar.dir/depend

