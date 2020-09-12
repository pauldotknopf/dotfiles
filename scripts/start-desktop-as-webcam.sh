#!/usr/bin/env bash
set -x

sudo modprobe v4l2loopback \
    video_nr=10 \
    card_label="OBS Video Source" \
    exclusive_caps=1

DISPLAY_RES=`xrandr | grep \* | awk '{print $1}'`

ffmpeg -f x11grab -r 15 -s ${DISPLAY_RES} -i ${DISPLAY} -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video10

trap "sudo modprobe -r v4l2loopback" EXIT