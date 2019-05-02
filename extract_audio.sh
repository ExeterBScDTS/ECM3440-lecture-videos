#!/bin/bash

infile="videos/ECM3440 - Week 2 - Lesson 1a - Python type hints - Slides.mp4"
outfile="audio/type-hints.flac"
ls -l "${infile}"

docker run -v $PWD:/temp/ jrottenberg/ffmpeg -i "/temp/${infile}" -f mp3 -ab 44000 -vn - > ${outfile}

# Or if ffmpeg is installed use this
# ffmpeg -i "${infile}" -f mp3 -ab 44000 -vn ${outfile}

# Note that ffmpeg can read from a URL so this also works
url=https://media.githubusercontent.com/media/ExeterBScDTS/ECM3440-lecture-videos/master/videos/ECM3440%20-%20Week%202%20-%20Lesson%201a%20-%20Python%20type%20hints%20-%20Slides.mp4
docker run jrottenberg/ffmpeg -i "${url}" -f flac -ac 1 -ar 16000 -vn - > ${outfile}
