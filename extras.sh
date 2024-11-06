#!/bin/bash
[[ "$radarr_eventtype" == "Test" ]] && exit 0

# Check if Featurettes folder exists and copy it if found
if test -d "$radarr_moviefile_sourcefolder/Featurettes"; then
   cp -R "$radarr_moviefile_sourcefolder/Featurettes" "$radarr_movie_path/Extras"
fi

# Check if Extras folder exists and create .nomedia file
if test -d "$radarr_movie_path/Extras"; then
   touch "$radarr_movie_path/Extras/.nomedia"
fi

exit 0
