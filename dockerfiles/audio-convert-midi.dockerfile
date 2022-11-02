FROM python:3.8-slim

RUN apt-get -y update
RUN apt-get -y install g++ subversion python3-dev gfortran libsndfile1-dev libffi-dev ffmpeg git
RUN python -m pip install --upgrade pip 
RUN python -m pip install soundfile midiutil cffi numpy pycparser progressbar2 python3-midi audio-to-midi

ENV IN_FILE=input.wav
ENV OUT_FILE=output.mid

WORKDIR /data/input
# audio-to-midi ./this_is_a_test.wav -b 120 -t 30
CMD ["/bin/sh", "-c", "audio-to-midi", "/data/input/${IN_FILE}", "-o", "/data/output/${OUT_FILE}"]
