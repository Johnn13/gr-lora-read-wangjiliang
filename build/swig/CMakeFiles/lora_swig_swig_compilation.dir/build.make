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

# Utility rule file for lora_swig_swig_compilation.

# Include the progress variables for this target.
include swig/CMakeFiles/lora_swig_swig_compilation.dir/progress.make

swig/CMakeFiles/lora_swig_swig_compilation: swig/CMakeFiles/lora_swig.dir/lora_swigPYTHON.stamp


swig/CMakeFiles/lora_swig.dir/lora_swigPYTHON.stamp: /usr/local/lib/python3/dist-packages/gnuradio/gr/_runtime_swig.so
swig/CMakeFiles/lora_swig.dir/lora_swigPYTHON.stamp: ../swig/lora_swig.i
swig/CMakeFiles/lora_swig.dir/lora_swigPYTHON.stamp: ../swig/lora_swig.i
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/szu-iot/gr-lora-jkadbear/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Swig source lora_swig.i"
	cd /home/szu-iot/gr-lora-jkadbear/build/swig && /usr/bin/cmake -E make_directory /home/szu-iot/gr-lora-jkadbear/build/swig /home/szu-iot/gr-lora-jkadbear/build/swig/CMakeFiles/lora_swig.dir
	cd /home/szu-iot/gr-lora-jkadbear/build/swig && /usr/bin/cmake -E touch /home/szu-iot/gr-lora-jkadbear/build/swig/CMakeFiles/lora_swig.dir/lora_swigPYTHON.stamp
	cd /home/szu-iot/gr-lora-jkadbear/build/swig && /usr/bin/cmake -E env SWIG_LIB=/usr/share/swig3.0 /usr/bin/swig3.0 -python -fvirtual -modern -keyword -w511 -w314 -relativeimport -py3 -module lora_swig -I/home/szu-iot/gr-lora-jkadbear/build/swig -I/home/szu-iot/gr-lora-jkadbear/swig -I/usr/local/include/gnuradio/swig -I/usr/include/python3.6m -I/home/szu-iot/gr-lora-jkadbear/lib/../include -I/usr/local/include -I/usr/local/include -I/usr/include -I/usr/include -I/usr/include -I/usr/include -I/usr/include -I/usr/include -I/usr/include -I/usr/local/include -I/usr/include -I/usr/include -I/usr/include -I/usr/include -I/usr/local/include -I/usr/local/include -I/usr/include -I/home/szu-iot/gr-lora-jkadbear/build/swig -I/home/szu-iot/gr-lora-jkadbear/swig -I/usr/local/include/gnuradio/swig -I/usr/include/python3.6m -I/home/szu-iot/gr-lora-jkadbear/lib/../include -I/usr/local/include -I/usr/local/include -I/usr/include -I/usr/include -I/usr/include -I/usr/include -I/usr/include -I/usr/include -I/usr/include -I/usr/local/include -I/usr/include -I/usr/include -I/usr/include -I/usr/include -I/usr/local/include -I/usr/local/include -I/usr/include -outdir /home/szu-iot/gr-lora-jkadbear/build/swig -c++ -o /home/szu-iot/gr-lora-jkadbear/build/swig/CMakeFiles/lora_swig.dir/lora_swigPYTHON_wrap.cxx /home/szu-iot/gr-lora-jkadbear/swig/lora_swig.i

lora_swig_swig_compilation: swig/CMakeFiles/lora_swig_swig_compilation
lora_swig_swig_compilation: swig/CMakeFiles/lora_swig.dir/lora_swigPYTHON.stamp
lora_swig_swig_compilation: swig/CMakeFiles/lora_swig_swig_compilation.dir/build.make

.PHONY : lora_swig_swig_compilation

# Rule to build all files generated by this target.
swig/CMakeFiles/lora_swig_swig_compilation.dir/build: lora_swig_swig_compilation

.PHONY : swig/CMakeFiles/lora_swig_swig_compilation.dir/build

swig/CMakeFiles/lora_swig_swig_compilation.dir/clean:
	cd /home/szu-iot/gr-lora-jkadbear/build/swig && $(CMAKE_COMMAND) -P CMakeFiles/lora_swig_swig_compilation.dir/cmake_clean.cmake
.PHONY : swig/CMakeFiles/lora_swig_swig_compilation.dir/clean

swig/CMakeFiles/lora_swig_swig_compilation.dir/depend:
	cd /home/szu-iot/gr-lora-jkadbear/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/szu-iot/gr-lora-jkadbear /home/szu-iot/gr-lora-jkadbear/swig /home/szu-iot/gr-lora-jkadbear/build /home/szu-iot/gr-lora-jkadbear/build/swig /home/szu-iot/gr-lora-jkadbear/build/swig/CMakeFiles/lora_swig_swig_compilation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : swig/CMakeFiles/lora_swig_swig_compilation.dir/depend

