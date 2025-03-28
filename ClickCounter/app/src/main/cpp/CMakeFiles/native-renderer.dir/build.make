# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/josevictor/Documents/Android-samples/ClickCounter/app/src/main/cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/josevictor/Documents/Android-samples/ClickCounter/app/src/main/cpp

# Include any dependencies generated for this target.
include CMakeFiles/native-renderer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/native-renderer.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/native-renderer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/native-renderer.dir/flags.make

CMakeFiles/native-renderer.dir/native-renderer.c.o: CMakeFiles/native-renderer.dir/flags.make
CMakeFiles/native-renderer.dir/native-renderer.c.o: native-renderer.c
CMakeFiles/native-renderer.dir/native-renderer.c.o: CMakeFiles/native-renderer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/josevictor/Documents/Android-samples/ClickCounter/app/src/main/cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/native-renderer.dir/native-renderer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/native-renderer.dir/native-renderer.c.o -MF CMakeFiles/native-renderer.dir/native-renderer.c.o.d -o CMakeFiles/native-renderer.dir/native-renderer.c.o -c /home/josevictor/Documents/Android-samples/ClickCounter/app/src/main/cpp/native-renderer.c

CMakeFiles/native-renderer.dir/native-renderer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/native-renderer.dir/native-renderer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/josevictor/Documents/Android-samples/ClickCounter/app/src/main/cpp/native-renderer.c > CMakeFiles/native-renderer.dir/native-renderer.c.i

CMakeFiles/native-renderer.dir/native-renderer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/native-renderer.dir/native-renderer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/josevictor/Documents/Android-samples/ClickCounter/app/src/main/cpp/native-renderer.c -o CMakeFiles/native-renderer.dir/native-renderer.c.s

# Object files for target native-renderer
native__renderer_OBJECTS = \
"CMakeFiles/native-renderer.dir/native-renderer.c.o"

# External object files for target native-renderer
native__renderer_EXTERNAL_OBJECTS =

libnative-renderer.so: CMakeFiles/native-renderer.dir/native-renderer.c.o
libnative-renderer.so: CMakeFiles/native-renderer.dir/build.make
libnative-renderer.so: CMakeFiles/native-renderer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/josevictor/Documents/Android-samples/ClickCounter/app/src/main/cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libnative-renderer.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/native-renderer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/native-renderer.dir/build: libnative-renderer.so
.PHONY : CMakeFiles/native-renderer.dir/build

CMakeFiles/native-renderer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/native-renderer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/native-renderer.dir/clean

CMakeFiles/native-renderer.dir/depend:
	cd /home/josevictor/Documents/Android-samples/ClickCounter/app/src/main/cpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/josevictor/Documents/Android-samples/ClickCounter/app/src/main/cpp /home/josevictor/Documents/Android-samples/ClickCounter/app/src/main/cpp /home/josevictor/Documents/Android-samples/ClickCounter/app/src/main/cpp /home/josevictor/Documents/Android-samples/ClickCounter/app/src/main/cpp /home/josevictor/Documents/Android-samples/ClickCounter/app/src/main/cpp/CMakeFiles/native-renderer.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/native-renderer.dir/depend

