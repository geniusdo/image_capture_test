# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/liuchuangye/c++/videocap

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/liuchuangye/c++/videocap

# Include any dependencies generated for this target.
include CMakeFiles/cap.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cap.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cap.dir/flags.make

CMakeFiles/cap.dir/cap.cpp.o: CMakeFiles/cap.dir/flags.make
CMakeFiles/cap.dir/cap.cpp.o: cap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liuchuangye/c++/videocap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cap.dir/cap.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cap.dir/cap.cpp.o -c /home/liuchuangye/c++/videocap/cap.cpp

CMakeFiles/cap.dir/cap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cap.dir/cap.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liuchuangye/c++/videocap/cap.cpp > CMakeFiles/cap.dir/cap.cpp.i

CMakeFiles/cap.dir/cap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cap.dir/cap.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liuchuangye/c++/videocap/cap.cpp -o CMakeFiles/cap.dir/cap.cpp.s

# Object files for target cap
cap_OBJECTS = \
"CMakeFiles/cap.dir/cap.cpp.o"

# External object files for target cap
cap_EXTERNAL_OBJECTS =

cap: CMakeFiles/cap.dir/cap.cpp.o
cap: CMakeFiles/cap.dir/build.make
cap: /usr/local/lib/libopencv_gapi.so.4.5.5
cap: /usr/local/lib/libopencv_highgui.so.4.5.5
cap: /usr/local/lib/libopencv_ml.so.4.5.5
cap: /usr/local/lib/libopencv_objdetect.so.4.5.5
cap: /usr/local/lib/libopencv_photo.so.4.5.5
cap: /usr/local/lib/libopencv_stitching.so.4.5.5
cap: /usr/local/lib/libopencv_video.so.4.5.5
cap: /usr/local/lib/libopencv_videoio.so.4.5.5
cap: /usr/local/lib/libopencv_imgcodecs.so.4.5.5
cap: /usr/local/lib/libopencv_dnn.so.4.5.5
cap: /usr/local/lib/libopencv_calib3d.so.4.5.5
cap: /usr/local/lib/libopencv_features2d.so.4.5.5
cap: /usr/local/lib/libopencv_flann.so.4.5.5
cap: /usr/local/lib/libopencv_imgproc.so.4.5.5
cap: /usr/local/lib/libopencv_core.so.4.5.5
cap: CMakeFiles/cap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/liuchuangye/c++/videocap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cap"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cap.dir/build: cap

.PHONY : CMakeFiles/cap.dir/build

CMakeFiles/cap.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cap.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cap.dir/clean

CMakeFiles/cap.dir/depend:
	cd /home/liuchuangye/c++/videocap && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/liuchuangye/c++/videocap /home/liuchuangye/c++/videocap /home/liuchuangye/c++/videocap /home/liuchuangye/c++/videocap /home/liuchuangye/c++/videocap/CMakeFiles/cap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cap.dir/depend

