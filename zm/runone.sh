echo $1
echo $2 
docker run  -v `pwd`:/tmp/workdir   --net host  jrottenberg/ffmpeg  \
        -i http://nobq.fvgt.online/$1 -stats \
        -vf scale=-2:480  -c:v libx264  -preset medium -tune film -crf 28 -c:a copy -movflags frag_keyframe+faststart -f mp4 -strict -2 -> $2

 MP4Box -isma $2
