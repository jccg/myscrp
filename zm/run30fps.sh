 docker run  -v `pwd`:/tmp/workdir   --net host  jrottenberg/ffmpeg  \
        -i http://5t.fvgt.online/$1 -r 29.97 -stats -threads 3 \
        -vf scale=-2:480  -c:v libx264  -preset medium -tune film -crf 28 -c:a copy -movflags frag_keyframe+faststart -f mp4 -strict -2 -> $1

 MP4Box -isma $1
