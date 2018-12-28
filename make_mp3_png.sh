#!/usr/bin/env bash

CURRENTDIR=$(cd `dirname $0` && pwd)
TEMPDIR=$CURRENTDIR"/.temp"
SOUNDFONT=$CURRENTDIR"/soundfonts/GeneralUser-GS-1.471/GeneralUser-GS-v1.471.sf2"

# TODO: Place TEMPDIR and SOUNDFONT checks.

for file in $CURRENTDIR"/lilypond/piano_notes_ly/"*; do

    filename=${file##*/}
    basename=${filename%%.*}

    # Generate .pdf and .midi file from .ly file and place into temp directory
    lilypond --output=$TEMPDIR \
        $CURRENTDIR"/lilypond/piano_notes_ly/${basename}.ly"

    # Process image

    # Convert .pdf to .png with 300dpi and trimmed whitespace
    convert -trim -density 300 $TEMPDIR/${basename}".pdf" \
        $CURRENTDIR"/deck/images/score/${basename}.png"
    # Remove temp .pdf
    rm $TEMPDIR/${basename}".pdf"

    # Process audio

    # Convert .midi into a .wav
    fluidsynth -F $TEMPDIR"/${basename}.wav" \
        $SOUNDFONT \
        $TEMPDIR"/${basename}.midi"

    # Convery .wav to .mp3
    lame $TEMPDIR"/${basename}.wav" \
        $CURRENTDIR"/deck/audio/${basename}.mp3"

    # Remove .midi and .wav
    rm $TEMPDIR"/${basename}.midi"
    rm $TEMPDIR"/${basename}.wav"

done
