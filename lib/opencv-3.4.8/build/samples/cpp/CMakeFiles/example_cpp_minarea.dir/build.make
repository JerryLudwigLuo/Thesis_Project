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
include samples/cpp/CMakeFiles/example_cpp_minarea.dir/depend.make

# Include the progress variables for this target.
include samples/cpp/CMakeFiles/example_cpp_minarea.dir/progress.make

# Include the compile flags for this target's objects.
include samples/cpp/CMakeFiles/example_cpp_minarea.dir/flags.make

samples/cpp/CMakeFiles/example_cpp_minarea.dir/minarea.cpp.o: samples/cpp/CMakeFiles/example_cpp_minarea.dir/flags.make
samples/cpp/CMakeFiles/example_cpp_minarea.dir/minarea.cpp.o: ../samples/cpp/minarea.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object samples/cpp/CMakeFiles/example_cpp_minarea.dir/minarea.cpp.o"
	cd /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/samples/cpp && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_cpp_minarea.dir/minarea.cpp.o -c /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/cpp/minarea.cpp

samples/cpp/CMakeFiles/example_cpp_minarea.dir/minarea.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_cpp_minarea.dir/minarea.cpp.i"
	cd /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/samples/cpp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/cpp/minarea.cpp > CMakeFiles/example_cpp_minarea.dir/minarea.cpp.i

samples/cpp/CMakeFiles/example_cpp_minarea.dir/minarea.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_cpp_minarea.dir/minarea.cpp.s"
	cd /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/samples/cpp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/cpp/minarea.cpp -o CMakeFiles/example_cpp_minarea.dir/minarea.cpp.s

samples/cpp/CMakeFiles/example_cpp_minarea.dir/minarea.cpp.o.requires:

.PHONY : samples/cpp/CMakeFiles/example_cpp_minarea.dir/minarea.cpp.o.requires

samples/cpp/CMakeFiles/example_cpp_minarea.dir/minarea.cpp.o.provides: samples/cpp/CMakeFiles/example_cpp_minarea.dir/minarea.cpp.o.requires
	$(MAKE) -f samples/cpp/CMakeFiles/example_cpp_minarea.dir/build.make samples/cpp/CMakeFiles/example_cpp_minarea.dir/minarea.cpp.o.provides.build
.PHONY : samples/cpp/CMakeFiles/example_cpp_minarea.dir/minarea.cpp.o.provides

samples/cpp/CMakeFiles/example_cpp_minarea.dir/minarea.cpp.o.provides.build: samples/cpp/CMakeFiles/example_cpp_minarea.dir/minarea.cpp.o


# Object files for target example_cpp_minarea
example_cpp_minarea_OBJECTS = \
"CMakeFiles/example_cpp_minarea.dir/minarea.cpp.o"

# External object files for target example_cpp_minarea
example_cpp_minarea_EXTERNAL_OBJECTS =

bin/example_cpp_minarea: samples/cpp/CMakeFiles/example_cpp_minarea.dir/minarea.cpp.o
bin/example_cpp_minarea: samples/cpp/CMakeFiles/example_cpp_minarea.dir/build.make
bin/example_cpp_minarea: 3rdparty/lib/libippiw.a
bin/example_cpp_minarea: 3rdparty/ippicv/ippicv_lnx/icv/lib/intel64/libippicv.a
bin/example_cpp_minarea: lib/libopencv_videostab.so.3.4.8
bin/example_cpp_minarea: lib/libopencv_shape.so.3.4.8
bin/example_cpp_minarea: lib/libopencv_ml.so.3.4.8
bin/example_cpp_minarea: lib/libopencv_objdetect.so.3.4.8
bin/example_cpp_minarea: lib/libopencv_highgui.so.3.4.8
bin/example_cpp_minarea: lib/libopencv_stitching.so.3.4.8
bin/example_cpp_minarea: lib/libopencv_dnn.so.3.4.8
bin/example_cpp_minarea: lib/libopencv_calib3d.so.3.4.8
bin/example_cpp_minarea: lib/libopencv_features2d.so.3.4.8
bin/example_cpp_minarea: lib/libopencv_photo.so.3.4.8
bin/example_cpp_minarea: lib/libopencv_superres.so.3.4.8
bin/example_cpp_minarea: lib/libopencv_viz.so.3.4.8
bin/example_cpp_minarea: lib/libopencv_flann.so.3.4.8
bin/example_cpp_minarea: lib/libopencv_videoio.so.3.4.8
bin/example_cpp_minarea: lib/libopencv_imgcodecs.so.3.4.8
bin/example_cpp_minarea: lib/libopencv_video.so.3.4.8
bin/example_cpp_minarea: lib/libopencv_imgproc.so.3.4.8
bin/example_cpp_minarea: lib/libopencv_core.so.3.4.8
bin/example_cpp_minarea: samples/cpp/CMakeFiles/example_cpp_minarea.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/example_cpp_minarea"
	cd /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/samples/cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_cpp_minarea.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/cpp/CMakeFiles/example_cpp_minarea.dir/build: bin/example_cpp_minarea

.PHONY : samples/cpp/CMakeFiles/example_cpp_minarea.dir/build

samples/cpp/CMakeFiles/example_cpp_minarea.dir/requires: samples/cpp/CMakeFiles/example_cpp_minarea.dir/minarea.cpp.o.requires

.PHONY : samples/cpp/CMakeFiles/example_cpp_minarea.dir/requires

samples/cpp/CMakeFiles/example_cpp_minarea.dir/clean:
	cd /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/samples/cpp && $(CMAKE_COMMAND) -P CMakeFiles/example_cpp_minarea.dir/cmake_clean.cmake
.PHONY : samples/cpp/CMakeFiles/example_cpp_minarea.dir/clean

samples/cpp/CMakeFiles/example_cpp_minarea.dir/depend:
	cd /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8 /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/samples/cpp /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/samples/cpp /home/jerryluo/Learn/Thesis_Project/lib/opencv-3.4.8/build/samples/cpp/CMakeFiles/example_cpp_minarea.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/cpp/CMakeFiles/example_cpp_minarea.dir/depend

