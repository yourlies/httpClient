# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.10.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.10.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lies/Documents/lies/c/httpClient/build

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lies/Documents/lies/c/httpClient/build

# Include any dependencies generated for this target.
include CMakeFiles/app.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/app.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/app.dir/flags.make

CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.o: /Users/lies/Documents/lies/c/httpClient/lib/socket.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lies/Documents/lies/c/httpClient/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.o   -c /Users/lies/Documents/lies/c/httpClient/lib/socket.c

CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lies/Documents/lies/c/httpClient/lib/socket.c > CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.i

CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lies/Documents/lies/c/httpClient/lib/socket.c -o CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.s

CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.o.requires:

.PHONY : CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.o.requires

CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.o.provides: CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.o.requires
	$(MAKE) -f CMakeFiles/app.dir/build.make CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.o.provides.build
.PHONY : CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.o.provides

CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.o.provides.build: CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.o


CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.o: /Users/lies/Documents/lies/c/httpClient/simple.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lies/Documents/lies/c/httpClient/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.o   -c /Users/lies/Documents/lies/c/httpClient/simple.c

CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lies/Documents/lies/c/httpClient/simple.c > CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.i

CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lies/Documents/lies/c/httpClient/simple.c -o CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.s

CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.o.requires:

.PHONY : CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.o.requires

CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.o.provides: CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.o.requires
	$(MAKE) -f CMakeFiles/app.dir/build.make CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.o.provides.build
.PHONY : CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.o.provides

CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.o.provides.build: CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.o


# Object files for target app
app_OBJECTS = \
"CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.o" \
"CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.o"

# External object files for target app
app_EXTERNAL_OBJECTS =

app: CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.o
app: CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.o
app: CMakeFiles/app.dir/build.make
app: CMakeFiles/app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lies/Documents/lies/c/httpClient/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable app"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/app.dir/build: app

.PHONY : CMakeFiles/app.dir/build

CMakeFiles/app.dir/requires: CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/lib/socket.c.o.requires
CMakeFiles/app.dir/requires: CMakeFiles/app.dir/Users/lies/Documents/lies/c/httpClient/simple.c.o.requires

.PHONY : CMakeFiles/app.dir/requires

CMakeFiles/app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/app.dir/cmake_clean.cmake
.PHONY : CMakeFiles/app.dir/clean

CMakeFiles/app.dir/depend:
	cd /Users/lies/Documents/lies/c/httpClient/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lies/Documents/lies/c/httpClient/build /Users/lies/Documents/lies/c/httpClient/build /Users/lies/Documents/lies/c/httpClient/build /Users/lies/Documents/lies/c/httpClient/build /Users/lies/Documents/lies/c/httpClient/build/CMakeFiles/app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/app.dir/depend

