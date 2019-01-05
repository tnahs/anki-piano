#!/usr/bin/env bash

CURRENTDIR=$(cd `dirname $0` && pwd)
TEMPDIR=$CURRENTDIR"/.temp"
SOUNDFONT=$CURRENTDIR"/soundfonts/GeneralUser-GS-1.471/GeneralUser-GS-v1.471.sf2"

# TODO: Place TEMPDIR and SOUNDFONT checks.

function run_script {

    for file in $CURRENTDIR"/lilypond/score-${side}-ly/"*; do

        filename=${file##*/}
        basename=${filename%%.*}

        # Generate .pdf and .midi file from .ly file and place into temp directory
        lilypond --output=$TEMPDIR \
            $CURRENTDIR"/lilypond/score-${side}-ly/${basename}.ly"

        # Process image

        # Convert .pdf to .png with 300dpi and trimmed whitespace
        convert -trim -density 300 $TEMPDIR"/${basename}.pdf" \
            $CURRENTDIR"/deck/images/score-${side}/piano-score-${side}-${basename}.png"

        # Remove temp .pdf
        rm $TEMPDIR/${basename}".pdf"


        # Process audio

        if [ "${audio}" = "true" ]; then

            # Convert .midi into a .wav
            fluidsynth -F $TEMPDIR"/${basename}.wav" \
                $SOUNDFONT \
                $TEMPDIR"/${basename}.midi"

            # Convery .wav to .mp3
            lame $TEMPDIR"/${basename}.wav" \
                $CURRENTDIR"/deck/audio/piano-audio-${basename}.mp3"

            # Remove .wav
            rm $TEMPDIR"/${basename}.wav"
        fi

        # Remove .midi and
        rm $TEMPDIR"/${basename}.midi"

    done
}

if [[ $# -eq 0 ]] ; then

    echo ""
    echo "ERROR: Missing an arguent!"
    echo "bash {scriptname}.sh [side] [audio]"
    echo "e.g. bash {scriptname}.sh front true"
    echo ""

    exit 1
else

    side=$1
    audio=$2

    run_script
fi