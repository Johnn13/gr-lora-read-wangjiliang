#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir="/home/szu-iot/gr-lora-jkadbear/python"
export GR_CONF_CONTROLPORT_ON=False
export PATH="/home/szu-iot/gr-lora-jkadbear/build/python":$PATH
export LD_LIBRARY_PATH="":$LD_LIBRARY_PATH
export PYTHONPATH=/home/szu-iot/gr-lora-jkadbear/build/swig:$PYTHONPATH
/usr/bin/python3.6 /home/szu-iot/gr-lora-jkadbear/python/qa_pyramid_demod.py 
