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
CMAKE_SOURCE_DIR = /linspace-exec

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /linspace-exec/build

# Include any dependencies generated for this target.
include CMakeFiles/linspace.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/linspace.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/linspace.dir/flags.make

CMakeFiles/linspace.dir/linspace.cpp.o: CMakeFiles/linspace.dir/flags.make
CMakeFiles/linspace.dir/linspace.cpp.o: ../linspace.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/linspace-exec/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/linspace.dir/linspace.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/linspace.dir/linspace.cpp.o -c /linspace-exec/linspace.cpp

CMakeFiles/linspace.dir/linspace.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/linspace.dir/linspace.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /linspace-exec/linspace.cpp > CMakeFiles/linspace.dir/linspace.cpp.i

CMakeFiles/linspace.dir/linspace.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/linspace.dir/linspace.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /linspace-exec/linspace.cpp -o CMakeFiles/linspace.dir/linspace.cpp.s

# Object files for target linspace
linspace_OBJECTS = \
"CMakeFiles/linspace.dir/linspace.cpp.o"

# External object files for target linspace
linspace_EXTERNAL_OBJECTS =

linspace: CMakeFiles/linspace.dir/linspace.cpp.o
linspace: CMakeFiles/linspace.dir/build.make
linspace: /libtorch/lib/libtorch.so
linspace: /libtorch/lib/libc10.so
linspace: /libtorch/lib/libkineto.a
linspace: /libtorch/lib/libc10.so
linspace: CMakeFiles/linspace.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/linspace-exec/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable linspace"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/linspace.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/linspace.dir/build: linspace

.PHONY : CMakeFiles/linspace.dir/build

CMakeFiles/linspace.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/linspace.dir/cmake_clean.cmake
.PHONY : CMakeFiles/linspace.dir/clean

CMakeFiles/linspace.dir/depend:
	cd /linspace-exec/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /linspace-exec /linspace-exec /linspace-exec/build /linspace-exec/build /linspace-exec/build/CMakeFiles/linspace.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/linspace.dir/depend
