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
CMAKE_SOURCE_DIR = /fmod-exec

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /fmod-exec/build

# Include any dependencies generated for this target.
include CMakeFiles/fmod.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/fmod.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fmod.dir/flags.make

CMakeFiles/fmod.dir/fmod.cpp.o: CMakeFiles/fmod.dir/flags.make
CMakeFiles/fmod.dir/fmod.cpp.o: ../fmod.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/fmod-exec/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/fmod.dir/fmod.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fmod.dir/fmod.cpp.o -c /fmod-exec/fmod.cpp

CMakeFiles/fmod.dir/fmod.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fmod.dir/fmod.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /fmod-exec/fmod.cpp > CMakeFiles/fmod.dir/fmod.cpp.i

CMakeFiles/fmod.dir/fmod.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fmod.dir/fmod.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /fmod-exec/fmod.cpp -o CMakeFiles/fmod.dir/fmod.cpp.s

# Object files for target fmod
fmod_OBJECTS = \
"CMakeFiles/fmod.dir/fmod.cpp.o"

# External object files for target fmod
fmod_EXTERNAL_OBJECTS =

fmod: CMakeFiles/fmod.dir/fmod.cpp.o
fmod: CMakeFiles/fmod.dir/build.make
fmod: /libtorch/lib/libtorch.so
fmod: /libtorch/lib/libc10.so
fmod: /libtorch/lib/libkineto.a
fmod: /libtorch/lib/libc10.so
fmod: CMakeFiles/fmod.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/fmod-exec/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fmod"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fmod.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fmod.dir/build: fmod

.PHONY : CMakeFiles/fmod.dir/build

CMakeFiles/fmod.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fmod.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fmod.dir/clean

CMakeFiles/fmod.dir/depend:
	cd /fmod-exec/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /fmod-exec /fmod-exec /fmod-exec/build /fmod-exec/build /fmod-exec/build/CMakeFiles/fmod.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fmod.dir/depend

