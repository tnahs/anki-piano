%% ----------------------------------------------------------------------------
%% Generated on: 2019 January 05
%% Note Name: D3
%% Octave: 3
%% Clef: bass
%% Filename: 058-30-3-bass-D3
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
  r2
  % treble octave (hidden)
  r1
  % treble octave (hidden) repeat
  \unHideNotes
  r1
  \bar "|."
}

lower = {
  \clef bass
  \numericTimeSignature
  % bass note in color
  r4 d4
  % bass octave (hidden)
  r4 \hideNotes d,4 d4 d'4
  % bass octave (hidden) repeat
  \unHideNotes
  r4 \hideNotes d,4 d4 d'4
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