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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ros/524yss

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ros/524yss/build

# Include any dependencies generated for this target.
include CMakeFiles/firstcpp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/firstcpp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/firstcpp.dir/flags.make

CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.o: CMakeFiles/firstcpp.dir/flags.make
CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.o: ../PointCloudOpt.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ros/524yss/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.o -c /home/ros/524yss/PointCloudOpt.cpp

CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ros/524yss/PointCloudOpt.cpp > CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.i

CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ros/524yss/PointCloudOpt.cpp -o CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.s

CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.o.requires:
.PHONY : CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.o.requires

CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.o.provides: CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.o.requires
	$(MAKE) -f CMakeFiles/firstcpp.dir/build.make CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.o.provides.build
.PHONY : CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.o.provides

CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.o.provides.build: CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.o

CMakeFiles/firstcpp.dir/main.cpp.o: CMakeFiles/firstcpp.dir/flags.make
CMakeFiles/firstcpp.dir/main.cpp.o: ../main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ros/524yss/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/firstcpp.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/firstcpp.dir/main.cpp.o -c /home/ros/524yss/main.cpp

CMakeFiles/firstcpp.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/firstcpp.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ros/524yss/main.cpp > CMakeFiles/firstcpp.dir/main.cpp.i

CMakeFiles/firstcpp.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/firstcpp.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ros/524yss/main.cpp -o CMakeFiles/firstcpp.dir/main.cpp.s

CMakeFiles/firstcpp.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/firstcpp.dir/main.cpp.o.requires

CMakeFiles/firstcpp.dir/main.cpp.o.provides: CMakeFiles/firstcpp.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/firstcpp.dir/build.make CMakeFiles/firstcpp.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/firstcpp.dir/main.cpp.o.provides

CMakeFiles/firstcpp.dir/main.cpp.o.provides.build: CMakeFiles/firstcpp.dir/main.cpp.o

# Object files for target firstcpp
firstcpp_OBJECTS = \
"CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.o" \
"CMakeFiles/firstcpp.dir/main.cpp.o"

# External object files for target firstcpp
firstcpp_EXTERNAL_OBJECTS =

firstcpp: CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.o
firstcpp: CMakeFiles/firstcpp.dir/main.cpp.o
firstcpp: CMakeFiles/firstcpp.dir/build.make
firstcpp: /usr/lib/x86_64-linux-gnu/libboost_system.so
firstcpp: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
firstcpp: /usr/lib/x86_64-linux-gnu/libboost_thread.so
firstcpp: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
firstcpp: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
firstcpp: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
firstcpp: /usr/lib/x86_64-linux-gnu/libpthread.so
firstcpp: /usr/lib/libpcl_common.so
firstcpp: /usr/lib/libpcl_octree.so
firstcpp: /usr/lib/libOpenNI.so
firstcpp: /usr/lib/libvtkCommon.so.5.8.0
firstcpp: /usr/lib/libvtkRendering.so.5.8.0
firstcpp: /usr/lib/libvtkHybrid.so.5.8.0
firstcpp: /usr/lib/libvtkCharts.so.5.8.0
firstcpp: /usr/lib/libpcl_io.so
firstcpp: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
firstcpp: /usr/lib/libpcl_kdtree.so
firstcpp: /usr/lib/libpcl_search.so
firstcpp: /usr/lib/libpcl_sample_consensus.so
firstcpp: /usr/lib/libpcl_filters.so
firstcpp: /usr/lib/libpcl_features.so
firstcpp: /usr/lib/libpcl_keypoints.so
firstcpp: /usr/lib/libpcl_segmentation.so
firstcpp: /usr/lib/libpcl_visualization.so
firstcpp: /usr/lib/libpcl_outofcore.so
firstcpp: /usr/lib/libpcl_registration.so
firstcpp: /usr/lib/libpcl_recognition.so
firstcpp: /usr/lib/x86_64-linux-gnu/libqhull.so
firstcpp: /usr/lib/libpcl_surface.so
firstcpp: /usr/lib/libpcl_people.so
firstcpp: /usr/lib/libpcl_tracking.so
firstcpp: /usr/lib/libpcl_apps.so
firstcpp: /usr/lib/x86_64-linux-gnu/libboost_system.so
firstcpp: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
firstcpp: /usr/lib/x86_64-linux-gnu/libboost_thread.so
firstcpp: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
firstcpp: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
firstcpp: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
firstcpp: /usr/lib/x86_64-linux-gnu/libpthread.so
firstcpp: /usr/lib/x86_64-linux-gnu/libqhull.so
firstcpp: /usr/lib/libOpenNI.so
firstcpp: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
firstcpp: /usr/lib/libvtkCommon.so.5.8.0
firstcpp: /usr/lib/libvtkRendering.so.5.8.0
firstcpp: /usr/lib/libvtkHybrid.so.5.8.0
firstcpp: /usr/lib/libvtkCharts.so.5.8.0
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
firstcpp: /usr/lib/libpcl_common.so
firstcpp: /usr/lib/libpcl_octree.so
firstcpp: /usr/lib/libpcl_io.so
firstcpp: /usr/lib/libpcl_kdtree.so
firstcpp: /usr/lib/libpcl_search.so
firstcpp: /usr/lib/libpcl_sample_consensus.so
firstcpp: /usr/lib/libpcl_filters.so
firstcpp: /usr/lib/libpcl_features.so
firstcpp: /usr/lib/libpcl_keypoints.so
firstcpp: /usr/lib/libpcl_segmentation.so
firstcpp: /usr/lib/libpcl_visualization.so
firstcpp: /usr/lib/libpcl_outofcore.so
firstcpp: /usr/lib/libpcl_registration.so
firstcpp: /usr/lib/libpcl_recognition.so
firstcpp: /usr/lib/libpcl_surface.so
firstcpp: /usr/lib/libpcl_people.so
firstcpp: /usr/lib/libpcl_tracking.so
firstcpp: /usr/lib/libpcl_apps.so
firstcpp: /usr/lib/libvtkViews.so.5.8.0
firstcpp: /usr/lib/libvtkInfovis.so.5.8.0
firstcpp: /usr/lib/libvtkWidgets.so.5.8.0
firstcpp: /usr/lib/libvtkHybrid.so.5.8.0
firstcpp: /usr/lib/libvtkParallel.so.5.8.0
firstcpp: /usr/lib/libvtkVolumeRendering.so.5.8.0
firstcpp: /usr/lib/libvtkRendering.so.5.8.0
firstcpp: /usr/lib/libvtkGraphics.so.5.8.0
firstcpp: /usr/lib/libvtkImaging.so.5.8.0
firstcpp: /usr/lib/libvtkIO.so.5.8.0
firstcpp: /usr/lib/libvtkFiltering.so.5.8.0
firstcpp: /usr/lib/libvtkCommon.so.5.8.0
firstcpp: /usr/lib/libvtksys.so.5.8.0
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_nonfree.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
firstcpp: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
firstcpp: CMakeFiles/firstcpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable firstcpp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/firstcpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/firstcpp.dir/build: firstcpp
.PHONY : CMakeFiles/firstcpp.dir/build

CMakeFiles/firstcpp.dir/requires: CMakeFiles/firstcpp.dir/PointCloudOpt.cpp.o.requires
CMakeFiles/firstcpp.dir/requires: CMakeFiles/firstcpp.dir/main.cpp.o.requires
.PHONY : CMakeFiles/firstcpp.dir/requires

CMakeFiles/firstcpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/firstcpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/firstcpp.dir/clean

CMakeFiles/firstcpp.dir/depend:
	cd /home/ros/524yss/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ros/524yss /home/ros/524yss /home/ros/524yss/build /home/ros/524yss/build /home/ros/524yss/build/CMakeFiles/firstcpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/firstcpp.dir/depend
