docker run  -v `pwd`:/tmp/workdir   --net host  jrottenberg/ffmpeg  \
        -i http://nobq.fvgt.online/$3$1 -stats \
        -vf scale=-2:$2  -c:v libx264  -preset medium -tune film -crf 28 -c:a libfdk_aac -vbr 3 -movflags frag_keyframe+faststart -f mp4 -strict -2 -> $3$1

 MP4Box -isma $3$1
