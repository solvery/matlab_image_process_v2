alias mrun='matlab -nodisplay -nodesktop -nojvm -nosplash -r'

mrun "gen_video_3(1, 60); exit"  > /dev/null &
