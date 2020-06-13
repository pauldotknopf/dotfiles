function download-sample-video() {
  if [ ! -e ~/sample-video.mp4 ]; then
    curl -Ls "https://github.com/pauldotknopf/raspberry-pi-camera-source/releases/download/1.0/arch-echo-color-wheel.mp4" > ~/sample-video.mp4
  fi
}