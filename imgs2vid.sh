ffmpeg -framerate 30 -pattern_type glob -i '*.png' \
  -c:v libx264 -pix_fmt yuv420p out.mp4

sleep 100 
ffmpeg -i out.mp4 -pix_fmt rgb24  -filter_complex fps=3 out.gif 


