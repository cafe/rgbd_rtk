# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/msrj/Documents/rgbd_rtk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/msrj/Documents/rgbd_rtk/build

# Include any dependencies generated for this target.
include applications/CMakeFiles/klt_tracker_test.dir/depend.make

# Include the progress variables for this target.
include applications/CMakeFiles/klt_tracker_test.dir/progress.make

# Include the compile flags for this target's objects.
include applications/CMakeFiles/klt_tracker_test.dir/flags.make

applications/CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.o: applications/CMakeFiles/klt_tracker_test.dir/flags.make
applications/CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.o: ../applications/klt_tracker_test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/msrj/Documents/rgbd_rtk/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object applications/CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.o"
	cd /home/msrj/Documents/rgbd_rtk/build/applications && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.o -c /home/msrj/Documents/rgbd_rtk/applications/klt_tracker_test.cpp

applications/CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.i"
	cd /home/msrj/Documents/rgbd_rtk/build/applications && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/msrj/Documents/rgbd_rtk/applications/klt_tracker_test.cpp > CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.i

applications/CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.s"
	cd /home/msrj/Documents/rgbd_rtk/build/applications && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/msrj/Documents/rgbd_rtk/applications/klt_tracker_test.cpp -o CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.s

applications/CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.o.requires:
.PHONY : applications/CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.o.requires

applications/CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.o.provides: applications/CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.o.requires
	$(MAKE) -f applications/CMakeFiles/klt_tracker_test.dir/build.make applications/CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.o.provides.build
.PHONY : applications/CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.o.provides

applications/CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.o.provides.build: applications/CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.o

# Object files for target klt_tracker_test
klt_tracker_test_OBJECTS = \
"CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.o"

# External object files for target klt_tracker_test
klt_tracker_test_EXTERNAL_OBJECTS =

applications/bin/klt_tracker_test: applications/CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.o
applications/bin/klt_tracker_test: applications/CMakeFiles/klt_tracker_test.dir/build.make
applications/bin/klt_tracker_test: io/lib/librgbd_rtk_io.so.1.0
applications/bin/klt_tracker_test: tracking/lib/librgbd_rtk_tracking.so.1.0
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_videostab.so.2.4.13
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_ts.a
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_superres.so.2.4.13
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_stitching.so.2.4.13
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_contrib.so.2.4.13
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_nonfree.so.2.4.13
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_ocl.so.2.4.13
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_gpu.so.2.4.13
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_photo.so.2.4.13
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_objdetect.so.2.4.13
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_legacy.so.2.4.13
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_video.so.2.4.13
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_ml.so.2.4.13
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_calib3d.so.2.4.13
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_features2d.so.2.4.13
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_highgui.so.2.4.13
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_imgproc.so.2.4.13
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_flann.so.2.4.13
applications/bin/klt_tracker_test: /usr/local/lib/libopencv_core.so.2.4.13
applications/bin/klt_tracker_test: applications/CMakeFiles/klt_tracker_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/klt_tracker_test"
	cd /home/msrj/Documents/rgbd_rtk/build/applications && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/klt_tracker_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
applications/CMakeFiles/klt_tracker_test.dir/build: applications/bin/klt_tracker_test
.PHONY : applications/CMakeFiles/klt_tracker_test.dir/build

applications/CMakeFiles/klt_tracker_test.dir/requires: applications/CMakeFiles/klt_tracker_test.dir/klt_tracker_test.cpp.o.requires
.PHONY : applications/CMakeFiles/klt_tracker_test.dir/requires

applications/CMakeFiles/klt_tracker_test.dir/clean:
	cd /home/msrj/Documents/rgbd_rtk/build/applications && $(CMAKE_COMMAND) -P CMakeFiles/klt_tracker_test.dir/cmake_clean.cmake
.PHONY : applications/CMakeFiles/klt_tracker_test.dir/clean

applications/CMakeFiles/klt_tracker_test.dir/depend:
	cd /home/msrj/Documents/rgbd_rtk/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/msrj/Documents/rgbd_rtk /home/msrj/Documents/rgbd_rtk/applications /home/msrj/Documents/rgbd_rtk/build /home/msrj/Documents/rgbd_rtk/build/applications /home/msrj/Documents/rgbd_rtk/build/applications/CMakeFiles/klt_tracker_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : applications/CMakeFiles/klt_tracker_test.dir/depend

