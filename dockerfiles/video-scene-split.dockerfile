FROM jrottenberg/ffmpeg:3-alpine

ENV IN_FILE=input.wav
ENV OUT_FILE=output.mid

CMD ["w2m","/data/input/${IN_FILE}", "/data/output/${OUT_FILE}"]