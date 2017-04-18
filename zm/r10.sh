if [ $2 == 0 ]
then
   echo "net file"
   docker run  -v `pwd`:/tmp/workdir   --net host  jrottenberg/ffmpeg  \
        -i http://nobq.fvgt.online/$4$1 -stats \
        -vf scale=-2:$3  -c:v libx264  -preset medium -tune film -crf 28 \
        -c:a libfdk_aac -vbr 3 -movflags frag_keyframe+faststart -f mp4 -strict -2 -> $4$1
   MP4Box -isma $4$1
else
   echo "loc file"
      docker run  -v `pwd`:/tmp/workdir   --net host  jrottenberg/ffmpeg  \
        -i $4$1 -stats \
        -vf scale=-2:$3  -c:v libx264  -preset medium -tune film -crf 28 \
        -c:a libfdk_aac -vbr 3 -movflags frag_keyframe+faststart -f mp4 -strict -2 -> HA$4$1
    MP4Box -isma HA$4$1
fi



