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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/szu-iot/gr-lora-jkadbear

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/szu-iot/gr-lora-jkadbear/build

# Include any dependencies generated for this target.
include swig/CMakeFiles/lora_swig.dir/depend.make

# Include the progress variables for this target.
include swig/CMakeFiles/lora_swig.dir/progress.make

# Include the compile flags for this target's objects.
include swig/CMakeFiles/lora_swig.dir/flags.make

swig/CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.o: swig/CMakeFiles/lora_swig.dir/flags.make
swig/CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.o: swig/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/szu-iot/gr-lora-jkadbear/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object swig/CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.o"
	cd /home/szu-iot/gr-lora-jkadbear/build/swig && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.o -c /home/szu-iot/gr-lora-jkadbear/build/swig/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx

swig/CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.i"
	cd /home/szu-iot/gr-lora-jkadbear/build/swig && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/szu-iot/gr-lora-jkadbear/build/swig/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx > CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.i

swig/CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.s"
	cd /home/szu-iot/gr-lora-jkadbear/build/swig && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/szu-iot/gr-lora-jkadbear/build/swig/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx -o CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.s

swig/CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.o.requires:

.PHONY : swig/CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.o.requires

swig/CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.o.provides: swig/CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.o.requires
	$(MAKE) -f swig/CMakeFiles/lora_swig.dir/build.make swig/CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.o.provides.build
.PHONY : swig/CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.o.provides

swig/CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.o.provides.build: swig/CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.o


# Object files for target lora_swig
lora_swig_OBJECTS = \
"CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.o"

# External object files for target lora_swig
lora_swig_EXTERNAL_OBJECTS =

swig/_lora_swig.so: swig/CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.o
swig/_lora_swig.so: swig/CMakeFiles/lora_swig.dir/build.make
swig/_lora_swig.so: lib/libgnuradio-lora.so.ae79d726
swig/_lora_swig.so: /usr/lib/x86_64-linux-gnu/libpython3.6m.so
swig/_lora_swig.so: /usr/local/lib/libgnuradio-blocks.so.v3.8.5.0-6-g57bd109d
swig/_lora_swig.so: /usr/local/lib/libgnuradio-fft.so.v3.8.5.0-6-g57bd109d
swig/_lora_swig.so: /usr/local/lib/libgnuradio-runtime.so.v3.8.5.0-6-g57bd109d
swig/_lora_swig.so: /usr/local/lib/libgnuradio-pmt.so.v3.8.5.0-6-g57bd109d
swig/_lora_swig.so: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
swig/_lora_swig.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
swig/_lora_swig.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
swig/_lora_swig.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
swig/_lora_swig.so: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
swig/_lora_swig.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
swig/_lora_swig.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
swig/_lora_swig.so: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
swig/_lora_swig.so: /usr/lib/x86_64-linux-gnu/liblog4cpp.so
swig/_lora_swig.so: /usr/lib/x86_64-linux-gnu/libgmpxx.so
swig/_lora_swig.so: /usr/lib/x86_64-linux-gnu/libgmp.so
swig/_lora_swig.so: /usr/lib/x86_64-linux-gnu/libfftw3f.so
swig/_lora_swig.so: /usr/lib/x86_64-linux-gnu/libfftw3f_threads.so
swig/_lora_swig.so: /usr/local/lib/libvolk.so.2.0
swig/_lora_swig.so: /usr/lib/x86_64-linux-gnu/liborc-0.4.so
swig/_lora_swig.so: swig/CMakeFiles/lora_swig.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/szu-iot/gr-lora-jkadbear/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module _lora_swig.so"
	cd /home/szu-iot/gr-lora-jkadbear/build/swig && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lora_swig.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
swig/CMakeFiles/lora_swig.dir/build: swig/_lora_swig.so

.PHONY : swig/CMakeFiles/lora_swig.dir/build

swig/CMakeFiles/lora_swig.dir/requires: swig/CMakeFiles/lora_swig.dir/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx.o.requires

.PHONY : swig/CMakeFiles/lora_swig.dir/requires

swig/CMakeFiles/lora_swig.dir/clean:
	cd /home/szu-iot/gr-lora-jkadbear/build/swig && $(CMAKE_COMMAND) -P CMakeFiles/lora_swig.dir/cmake_clean.cmake
.PHONY : swig/CMakeFiles/lora_swig.dir/clean

swig/CMakeFiles/lora_swig.dir/depend:
	cd /home/szu-iot/gr-lora-jkadbear/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/szu-iot/gr-lora-jkadbear /home/szu-iot/gr-lora-jkadbear/swig /home/szu-iot/gr-lora-jkadbear/build /home/szu-iot/gr-lora-jkadbear/build/swig /home/szu-iot/gr-lora-jkadbear/build/swig/CMakeFiles/lora_swig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : swig/CMakeFiles/lora_swig.dir/depend

