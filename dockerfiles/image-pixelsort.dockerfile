FROM python:3-alpine

RUN python -m pip install --upgrade pip && pip3 install pixelsort

ENV IN_FILE=input.jpg
ENV OUT_FILE=output.jpg

ENV INTERVAL=threshold
ENV RANDOMNESS=0
ENV THRESHOLD_L=0.25
ENV THRESHOLD_U=0.8
ENV CHAR_LEN=50
ENV ANGLE=0
ENV SORTING=Lightness
ENV MASK=''
ENV EXT_INTERVAL=''

CMD ["pixelsort","/data/input/${IN_FILE}", \
	"--int_function",  "${INTERVAL}", \
	"--output",  "${OUT_FILE}", \
	"--randomness",  "${RANDOMNESS}", \
	"--threshold",  "${THRESHOLD_L}", \
	"--upper_threshold",  "${THRESHOLD_U}", \
	"--char_length",  "${CHAR_LEN}", \
	"--angle",  "${ANGLE}", \
	"--sorting_function",  "${SORTING}", \
	"--int_file",  "${EXT_INTERVAL}", \
	"--mask",  "${MASK}", \
]

