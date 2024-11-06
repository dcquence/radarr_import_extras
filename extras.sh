#!/bin/bash
[[ "$radarr_eventtype" == "Test" ]] && exit 0

cp -R "$radarr_moviefile_sourcepath" "$radarr_movie_path"
cp -R "$radarr_moviefile_sourcefolder/Featurettes" "$radarr_movie_path/Extras" &&

# Check if Featurettes folder exists and move it if present
if test -d "$radarr_movie_path/Featurettes"; then
    mv "$radarr_movie_path/Featurettes" "$radarr_movie_path/Extras"
fi

# Check if Extras folder exists and create .nomedia file
if test -d "$radarr_movie_path/Extras"; then
   touch "$radarr_movie_path/Extras/.nomedia"
fi

exit 0
