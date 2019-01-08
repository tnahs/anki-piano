%% ----------------------------------------------------------------------------
%% Generated on: 2019 January 05
%% Note Name: C5
%% Octave: 5
%% Clef: bass
%% Filename: 107-52-5-bass-C5
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
  r4 c''4
  % bass octave (hidden)
  r4 \hideNotes c'4 c''4 c'''4
  % bass octave (hidden) repeat
  \unHideNotes
  r4 \hideNotes c'4 c''4 c'''4
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