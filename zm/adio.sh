 docker run  -v `pwd`:/tmp/workdir   --net host  jrottenberg/ffmpeg  \
        -i $1 -stats -threads 3  \
        -c:v copy  -c:a mp3 -ab 128 -movflags frag_keyframe+faststart -f mp4 -strict -2 -> H$1

MP4Box -isma H$1
