#!/bin/bash

infile="videos/ECM3440 - Week 2 - Lesson 1a - Python type hints - Slides.mp4"
outfile="audio/type-hints.mp3"
ls -l "${infile}"
ffmpeg -i "${infile}" -f mp3 -ab 44000 -vn ${outfile}