%% ----------------------------------------------------------------------------
%% Generated on: 2019 January 05
%% Note Name: B2
%% Octave: 2
%% Clef: bass
%% Filename: 037-27-2-bass-B2
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
  r4 b,4
  % bass octave (hidden)
  r4 \hideNotes b,,4 b,4 b4
  % bass octave (hidden) repeat
  \unHideNotes
  r4 \hideNotes b,,4 b,4 b4
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