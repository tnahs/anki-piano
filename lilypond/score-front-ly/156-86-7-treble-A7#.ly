%% ----------------------------------------------------------------------------
%% Generated on: 2019 January 05
%% Note Name: A7#
%% Octave: 7
%% Clef: treble
%% Filename: 156-86-7-treble-A7#
%% ----------------------------------------------------------------------------

\version "2.19.82"

\include "../piano_note_colors.ly"

\header {
  tagline = ""
}

upper = {
  \clef treble
  \numericTimeSignature
  % treble note
  r4 ais''''4
  % treble octave (hidden)
  r4 \hideNotes ais''4 ais'''4 ais''''4
  % treble octave (hidden) repeat
  \unHideNotes
  r4 \hideNotes ais''4 ais'''4 ais''''4
  \bar "|."
}

lower = {
  \clef bass
  \numericTimeSignature
  % bass note in color
  r2
  % bass octave (hidden)
  r1
  % bass octave (hidden) repeat
  \unHideNotes
  r1
}

\score {
  \new PianoStaff <<
    \context Score
    \applyContext #(override-color-for-all-grobs default-black)
    \time 4/4
    \partial 2
    \new Staff = upper { \upper }
    \new Staff = lower { \lower }
  >>
  \layout { }
  \midi { }
}