# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/boy/CLionProjects/simple-KV

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/boy/CLionProjects/simple-KV/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/simple_KV.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/simple_KV.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simple_KV.dir/flags.make

CMakeFiles/simple_KV.dir/main.c.o: CMakeFiles/simple_KV.dir/flags.make
CMakeFiles/simple_KV.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/boy/CLionProjects/simple-KV/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/simple_KV.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/simple_KV.dir/main.c.o -c /Users/boy/CLionProjects/simple-KV/main.c

CMakeFiles/simple_KV.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/simple_KV.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/boy/CLionProjects/simple-KV/main.c > CMakeFiles/simple_KV.dir/main.c.i

CMakeFiles/simple_KV.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/simple_KV.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/boy/CLionProjects/simple-KV/main.c -o CMakeFiles/simple_KV.dir/main.c.s

CMakeFiles/simple_KV.dir/line_parser.c.o: CMakeFiles/simple_KV.dir/flags.make
CMakeFiles/simple_KV.dir/line_parser.c.o: ../line_parser.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/boy/CLionProjects/simple-KV/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/simple_KV.dir/line_parser.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/simple_KV.dir/line_parser.c.o -c /Users/boy/CLionProjects/simple-KV/line_parser.c

CMakeFiles/simple_KV.dir/line_parser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/simple_KV.dir/line_parser.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/boy/CLionProjects/simple-KV/line_parser.c > CMakeFiles/simple_KV.dir/line_parser.c.i

CMakeFiles/simple_KV.dir/line_parser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/simple_KV.dir/line_parser.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/boy/CLionProjects/simple-KV/line_parser.c -o CMakeFiles/simple_KV.dir/line_parser.c.s

CMakeFiles/simple_KV.dir/memory_manage.c.o: CMakeFiles/simple_KV.dir/flags.make
CMakeFiles/simple_KV.dir/memory_manage.c.o: ../memory_manage.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/boy/CLionProjects/simple-KV/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/simple_KV.dir/memory_manage.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/simple_KV.dir/memory_manage.c.o -c /Users/boy/CLionProjects/simple-KV/memory_manage.c

CMakeFiles/simple_KV.dir/memory_manage.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/simple_KV.dir/memory_manage.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/boy/CLionProjects/simple-KV/memory_manage.c > CMakeFiles/simple_KV.dir/memory_manage.c.i

CMakeFiles/simple_KV.dir/memory_manage.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/simple_KV.dir/memory_manage.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/boy/CLionProjects/simple-KV/memory_manage.c -o CMakeFiles/simple_KV.dir/memory_manage.c.s

CMakeFiles/simple_KV.dir/hash.c.o: CMakeFiles/simple_KV.dir/flags.make
CMakeFiles/simple_KV.dir/hash.c.o: ../hash.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/boy/CLionProjects/simple-KV/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/simple_KV.dir/hash.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/simple_KV.dir/hash.c.o -c /Users/boy/CLionProjects/simple-KV/hash.c

CMakeFiles/simple_KV.dir/hash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/simple_KV.dir/hash.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/boy/CLionProjects/simple-KV/hash.c > CMakeFiles/simple_KV.dir/hash.c.i

CMakeFiles/simple_KV.dir/hash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/simple_KV.dir/hash.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/boy/CLionProjects/simple-KV/hash.c -o CMakeFiles/simple_KV.dir/hash.c.s

CMakeFiles/simple_KV.dir/kv_interface.c.o: CMakeFiles/simple_KV.dir/flags.make
CMakeFiles/simple_KV.dir/kv_interface.c.o: ../kv_interface.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/boy/CLionProjects/simple-KV/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/simple_KV.dir/kv_interface.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/simple_KV.dir/kv_interface.c.o -c /Users/boy/CLionProjects/simple-KV/kv_interface.c

CMakeFiles/simple_KV.dir/kv_interface.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/simple_KV.dir/kv_interface.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/boy/CLionProjects/simple-KV/kv_interface.c > CMakeFiles/simple_KV.dir/kv_interface.c.i

CMakeFiles/simple_KV.dir/kv_interface.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/simple_KV.dir/kv_interface.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/boy/CLionProjects/simple-KV/kv_interface.c -o CMakeFiles/simple_KV.dir/kv_interface.c.s

CMakeFiles/simple_KV.dir/util.c.o: CMakeFiles/simple_KV.dir/flags.make
CMakeFiles/simple_KV.dir/util.c.o: ../util.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/boy/CLionProjects/simple-KV/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/simple_KV.dir/util.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/simple_KV.dir/util.c.o -c /Users/boy/CLionProjects/simple-KV/util.c

CMakeFiles/simple_KV.dir/util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/simple_KV.dir/util.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/boy/CLionProjects/simple-KV/util.c > CMakeFiles/simple_KV.dir/util.c.i

CMakeFiles/simple_KV.dir/util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/simple_KV.dir/util.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/boy/CLionProjects/simple-KV/util.c -o CMakeFiles/simple_KV.dir/util.c.s

# Object files for target simple_KV
simple_KV_OBJECTS = \
"CMakeFiles/simple_KV.dir/main.c.o" \
"CMakeFiles/simple_KV.dir/line_parser.c.o" \
"CMakeFiles/simple_KV.dir/memory_manage.c.o" \
"CMakeFiles/simple_KV.dir/hash.c.o" \
"CMakeFiles/simple_KV.dir/kv_interface.c.o" \
"CMakeFiles/simple_KV.dir/util.c.o"

# External object files for target simple_KV
simple_KV_EXTERNAL_OBJECTS =

simple_KV: CMakeFiles/simple_KV.dir/main.c.o
simple_KV: CMakeFiles/simple_KV.dir/line_parser.c.o
simple_KV: CMakeFiles/simple_KV.dir/memory_manage.c.o
simple_KV: CMakeFiles/simple_KV.dir/hash.c.o
simple_KV: CMakeFiles/simple_KV.dir/kv_interface.c.o
simple_KV: CMakeFiles/simple_KV.dir/util.c.o
simple_KV: CMakeFiles/simple_KV.dir/build.make
simple_KV: CMakeFiles/simple_KV.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/boy/CLionProjects/simple-KV/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable simple_KV"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple_KV.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simple_KV.dir/build: simple_KV
.PHONY : CMakeFiles/simple_KV.dir/build

CMakeFiles/simple_KV.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simple_KV.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simple_KV.dir/clean

CMakeFiles/simple_KV.dir/depend:
	cd /Users/boy/CLionProjects/simple-KV/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/boy/CLionProjects/simple-KV /Users/boy/CLionProjects/simple-KV /Users/boy/CLionProjects/simple-KV/cmake-build-debug /Users/boy/CLionProjects/simple-KV/cmake-build-debug /Users/boy/CLionProjects/simple-KV/cmake-build-debug/CMakeFiles/simple_KV.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simple_KV.dir/depend

